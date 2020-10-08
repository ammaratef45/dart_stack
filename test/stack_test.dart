import 'package:stack/stack.dart';
import 'package:test/test.dart';

void main() {
  group('with string', () {
    test('is empty', () {
      Stack<String> stack = Stack();
      expect(stack.isEmpty, true);
      expect(stack.isNotEmpty, false);
    });
    test('is not empty', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      expect(stack.isNotEmpty, true);
      expect(stack.isEmpty, false);
    });
    test('push', () {
      Stack<String> stack = Stack();
      stack.push('abc');
    });
    test('top', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      expect(stack.top(), 'abc');
    });
    test('pop', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      stack.push('def');
      expect(stack.pop(), 'def');
      expect(stack.top(), 'abc');
    });
    test('size', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      stack.push('def');
      expect(stack.size(), 2);
      stack.pop();
      expect(stack.size(), 1);
    });
    test('length', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      stack.push('def');
      expect(stack.length, 2);
      stack.pop();
      expect(stack.length, 1);
    });
  });
}
