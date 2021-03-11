import 'dart:collection';
import 'dart:core' as core;
import 'dart:core';

class Stack<T> {
  final ListQueue<T> _list = ListQueue();

  /// check if the stack is empty.
  bool get isEmpty => _list.isEmpty;

  /// check if the stack is not empty.
  bool get isNotEmpty => _list.isNotEmpty;

  /// push element in top of the stack.
  void push(T e) => _list.addLast(e);

  /// get the top of the stack and delete it.
  T pop() {
    T res = _list.last;
    _list.removeLast();
    return res;
  }

  /// get the top of the stack without deleting it.
  T top() => _list.last;

  /// get the size of the stack.
  int get size => _list.length;

  /// returns true if element is found in the stack
  bool contains(T x) => _list.contains(x);

  /// print stack
  void print() {
    for (var item in List<T>.from(_list).reversed) {
      core.print(item);
    }
  }
}
