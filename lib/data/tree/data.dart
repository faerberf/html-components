import 'dart:html';
import 'dart:async';
import 'dart:convert';
import 'tree_node.dart';

abstract class TreeDataFetcher {
  TreeNode _root;
  
  TreeDataFetcher(TreeNode this._root);
  
  TreeNode get root => _root;
  
  Future<List<TreeNode>> fetchNodes(TreeNode parent);
}

class TreeClientDataFetcher extends TreeDataFetcher {
  TreeClientDataFetcher(TreeNode root) : super(root);
  
  Future<List<TreeNode>> fetchNodes(TreeNode parent) {
    Completer completer = new Completer();
    
    if (parent != null) {
      completer.complete(parent.children);
    }
    else {
      completer.complete(root.children);
    }
    
    return completer.future;
  }
}

class TreeServerDataFetcher extends TreeDataFetcher {
  Uri _serviceURL;
  
  TreeServerDataFetcher(Uri this._serviceURL) : super(null);
  
  Future<List<TreeNode>> fetchNodes(TreeNode parent) {
    Completer completer = new Completer();
    
    HttpRequest request = new HttpRequest();
    
    request.onReadyStateChange.listen((_) {
      if (request.readyState == HttpRequest.DONE && (request.status == 200 || request.status == 0)) {
        List mapList = JSON.decode(request.responseText);
        List<TreeNode> result = [];
        
        for (Map<String, dynamic> item in mapList) {
          TreeNode node = new TreeNode(item["data"], parent);
          // TODO Place into constructor
          node.isParent = item["isParent"];
          result.add(node);
        }
        
        completer.complete(result);
      }
    });
    
    request.open("POST", _serviceURL.toString(), async: false);
    request.send(JSON.encode(parent));
    
    return completer.future;
  }
}