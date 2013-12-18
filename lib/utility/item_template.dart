import 'package:polymer/polymer.dart';
import 'package:polymer_expressions/eval.dart';
import 'package:polymer_expressions/parser.dart';
import 'dart:html';
import '../common/null_tree_sanitizer.dart';

@CustomTag('h-item-template')
class ItemTemplateComponent extends PolymerElement {
  
  @published String content = "";
  
  ItemTemplateComponent.created() : super.created();
  
  void contentChanged(String oldValue) {
    Element element = new Element.html('<span>${content}</span>', treeSanitizer: new NullTreeSanitizer());
    this.shadowRoot.children
      ..clear()
      ..add(element);
  }
}