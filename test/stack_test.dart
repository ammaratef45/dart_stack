import 'dart:async';

import 'package:stack/illegal_operation_exception.dart';
import 'package:stack/stack.dart';
import 'package:test/test.dart';

void main() {
  group('with string', () {
    test('illegal size stack', () {
      try {
        Stack.sized(1);
        fail('should throw an exception but it did not.');
      } catch (ex) {
        expect(ex, isA<IllegalOperationException>());
      }
    });

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
    test('push beyond maximum stack size', () {
      Stack<String> stack = Stack.sized(2);
      try {
        stack.push('abc');
        stack.push('def');
        stack.push('ghi');
        fail(
            'should throw an exception for exceeding stack size, but it did not.');
      } catch (ex) {
        expect(ex, isA<IllegalOperationException>());
      }
    });
    test('top', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      expect(stack.top(), 'abc');
    });
    test('top on empty', () {
      try {
        Stack<String> stack = Stack();
        stack.top();
        fail('should throw an exception but it did not.');
      } catch (ex) {
        expect(ex, isA<IllegalOperationException>());
      }
    });
    test('pop', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      stack.push('def');
      expect(stack.pop(), 'def');
      expect(stack.top(), 'abc');
    });
    test('pop on empty', () {
      try {
        Stack<String> stack = Stack();
        stack.pop();
        fail('should throw an exception but it did not.');
      } catch (ex) {
        expect(ex, isA<IllegalOperationException>());
      }
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
    test('contains', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      stack.push('def');
      expect(stack.contains('def'), true);
      stack.pop();
      expect(stack.contains('def'), false);
    });
    test('clear', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      stack.push('def');
      stack.push('ghi');
      expect(stack.length, 3);
      stack.clear();
      expect(stack.length, 0);
    });
    test('print', overridePrint(() {
      log.clear();
      Stack<String> stack = Stack();
      stack.push('abc');
      stack.push('def');
      stack.print();
      expect(log.length, 2);
      expect(log[0], 'def');
      expect(log[1], 'abc');
    }));
  });
}

List<String> log = [];
void Function() overridePrint(void testFn()) => () {
      var spec = ZoneSpecification(
        print: (self, parent, zone, line) {
          log.add(line);
        },
      );
      return Zone.current.fork(specification: spec).run<void>(testFn);
    };
