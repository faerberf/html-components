import 'package:polymer/polymer.dart';
import 'dart:html';

void main() {
  initPolymer();
  
  querySelectorAll('button').first.onClick.listen((MouseEvent event) {
    querySelector('#nonmodal').show();
  });
  
  querySelectorAll('button')[1].onClick.listen((MouseEvent event) {
    querySelector('#modal').show();
  });
}