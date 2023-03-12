import 'package:trees/trees.dart';

void main(List<String> arguments) {
  final tree = makeBeverageTree();
  tree.forEachDepthFirst((node) => print(node.value));
}
