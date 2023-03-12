import 'dart:convert';

import 'package:linkedlist/linked_list.dart';
import 'package:linkedlist/node.dart';

void main(List<String> arguments) {
  final list = LinkedList<int>();
  list.push(3);
  list.push(2);
  list.push(1);

  list.printOutReverse();

  print(list.findMiddleNode());
}
