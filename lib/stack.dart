import 'dart:collection';

class Stack<T> {
  final ListQueue<T> _list = ListQueue();

  /// check if the stack is empty.
  bool get isEmpty => _list.isEmpty;

  /// check if the stack is not empty.
  bool get isNotEmpty => _list.isNotEmpty;

  /// push element in top of the stack.
  void push(T e) {
    _list.addLast(e);
  }

  /// get the top of the stack and delete it.
  T pop() {
    T res = _list.last;
    _list.removeLast();
    return res;
  }

  /// get the top of the stack without deleting it.
  T top() {
    return _list.last;
  }

  /// get the size of the stack.
  int size() {
    return _list.length;
  }

  // print stack
  void printStack() {
    while (!_list.isEmpty) {
      print(_list.last);
      _list.removeLast();
    }
  }
}
