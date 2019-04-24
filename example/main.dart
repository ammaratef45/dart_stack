import 'package:stack/stack.dart';

void main() {
  Stack<String> stack = Stack<String>();
  stack.push('abc');
  stack.push('edf');
  print(stack.pop()); // prints 'edf'
  print(stack.top()); // prints 'abc'
  for (var i = 0; i < 10; i++) {
    stack.push(i.toString());
  }
  while (stack.isNotEmpty) {
    stack.pop();
  }
  print(stack.isEmpty); // prints true
}