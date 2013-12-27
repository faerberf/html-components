import 'package:polymer/polymer.dart';
import 'dart:html';

@CustomTag('h-submenu')
class SubmenuComponent extends PolymerElement {
  
  @published String label;
  @published String icon;
  
  SubmenuComponent.created() : super.created();
  
  @override
  void enteredView() {
    super.enteredView();
    
    ContentElement contentElement = $['child-item'].querySelector('content');
    List children = contentElement.getDistributedNodes().where((Node node) => node is Element).toList(growable: false);
    
    if (children.isNotEmpty) {
      $['child-item'].classes.add('parent');
    }
  }
  
  void onItemMouseOver() {
    $['link'].classes.add('hover');
    $['child-list'].classes.remove('hidden');
  }
  
  void onItemMouseOut() {
    $['link'].classes.remove('hover');
    $['child-list'].classes.add('hidden');
  }
  
  void setMenubarToHorizontal() {
    $['icon-open'].classes
      ..remove('triangle-1-e')
      ..add('triangle-1-s');
    
    // Fix drop-down menu
    $['child-list'].classes
      ..remove('drop-left')
      ..add('drop-down');
    
    // Fix menuitem width
    $['submenu-container'].style.width = 'auto';
    $['link'].style.width = 'auto';
    
    // Fix margin
    this.style.float = 'left';
  }
  
}