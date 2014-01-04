import 'package:polymer/polymer.dart';
import 'dart:html';
import 'dart:async';
import 'package:html_components/html_components.dart';

class Document {
  String name;
  String size;
  String type;
  
  Document(String this.name, String this.size, String this.type);
  
  String toString() => name;
}

TreeNode getDocumentRoot() {
  TreeNode documentRoot = new TreeNode();
  
  TreeNode documents = new TreeNode(new Document("Documents", "80 KB", "Folder"), documentRoot);
  TreeNode pictures = new TreeNode(new Document("Pictures", "171 KB", "Folder"), documentRoot);
  TreeNode movies = new TreeNode(new Document("Movies", "79 GB", "Folder"), documentRoot);
  TreeNode work = new TreeNode(new Document("Work", "40 KB", "Folder"), documents);
  TreeNode htmlComponents = new TreeNode(new Document("HTML Components", "3 MB", "Folder"), documents);
  
  //Documents
  TreeNode expenses = new TreeNode(new Document("Expenses.doc", "30 KB", "Word Document"), work, "document");
  TreeNode resume = new TreeNode(new Document("Resume.doc", "10 KB", "Word Document"), work, "document");
  TreeNode documentation = new TreeNode(new Document("Documentation.pdf", "3 MB", "PDF Document"), htmlComponents, "document");
  
  //Pictures
  TreeNode barca = new TreeNode(new Document("barcelona.jpg", "30 KB", "JPEG Image"), pictures, "picture");
  TreeNode logo = new TreeNode(new Document("logo.jpg", "45 KB", "JPEG Image"), pictures, "picture");
  TreeNode honda = new TreeNode(new Document("honda.png", "96 KB", "PNG Image"), pictures, "picture");
  
  //Movies
  TreeNode pacino = new TreeNode(new Document("Al Pacino", "39 GB", "Folder"), movies);
  TreeNode deniro = new TreeNode(new Document("Robert De Niro", "40 GB", "Folder"), movies);
  TreeNode scarface = new TreeNode(new Document("Scarface", "15 GB", "Movie File"), pacino, "movie");
  TreeNode carlitosWay = new TreeNode(new Document("Carlitos' Way", "24 GB", "Movie File"), pacino, "movie");
  TreeNode goodfellas = new TreeNode(new Document("Goodfellas", "23 GB", "Movie File"), deniro, "movie");
  TreeNode untouchables = new TreeNode(new Document("Untouchables", "17 GB", "Movie File"), deniro, "movie");
  
  return documentRoot;
}

@CustomTag('treetable-page')
class TreeTablePage extends PolymerElement {
  
  @observable TreeNode documentRoot = getDocumentRoot();
  
  bool get applyAuthorStyles => true;
  
  TreeTablePage.created() : super.created();
  
  @override
  void enteredView() {
    super.enteredView();
    
    this.shadowRoot.querySelectorAll('h-treetable').forEach((TreetableComponent treetable) {
      treetable.on['expanded'].listen((CustomEvent event) {
        print('expanded: ${event.detail}');
      });
      
      treetable.on['collapsed'].listen((CustomEvent event) {
        print('collapsed: ${event.detail}');
      });
      
      treetable.on['selected'].listen((CustomEvent event) {
        print('selected: ${event.detail}');
      });
      
      treetable.on['columnResized'].listen((Event event) {
        print('column resized');
      });
    });
  }
  
}

void main() {
  initPolymer();
  
  querySelectorAll('h-treetable').forEach((TreetableComponent treetable) {
    treetable.on['expanded'].listen((CustomEvent event) {
      print('expanded: ${event.detail}');
    });
    
    treetable.on['collapsed'].listen((CustomEvent event) {
      print('collapsed: ${event.detail}');
    });
    
    treetable.on['selected'].listen((CustomEvent event) {
      print('selected: ${event.detail}');
    });
    
    treetable.on['columnResized'].listen((Event event) {
      print('column resized');
    });
  });
}