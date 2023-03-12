class TreeNode<T> {
  TreeNode(this.value);
  T value;
  List<TreeNode<T>> children = [];

  void add(TreeNode<T> child) {
    children.add(child);
  }

  void forEachDepthFirst(void Function(TreeNode<T> node) performAction) {
    performAction(this);
    for (final child in children) {
      child.forEachDepthFirst(performAction);
    }
  }

}


TreeNode<String> makeBeverageTree() {
    final tree = TreeNode('Beverages');
  final hot = TreeNode('Hot');
  final cold = TreeNode('Cold');
  final tea = TreeNode('tea');

  final coffee = TreeNode('coffee');
  final chocolate = TreeNode('chocolate');
  final blackTea = TreeNode('blackTea');
  final greenTea = TreeNode('greenTea');
  final chaiTea = TreeNode('chaiTea');
  final soda = TreeNode('soda');

  final milk = TreeNode('milk');

  final gingerAle = TreeNode('ginger ale');
  final bitterLemon = TreeNode('bitterLemon');

  tree.add(hot);
  tree.add(cold);
  hot.add(tea);
  hot.add(coffee);

  hot.add(chocolate);

  cold.add(soda);
  cold.add(milk);

  tea.add(blackTea);
  tea.add(greenTea);
  tea.add(chaiTea);

  soda.add(gingerAle);
  soda.add(bitterLemon);

  return tree;
}
