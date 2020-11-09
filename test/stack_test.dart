import 'dart:async';

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
    test('contains', () {
      Stack<String> stack = Stack();
      stack.push('abc');
      stack.push('def');
      expect(stack.contains('def'), true);
      stack.pop();
      expect(stack.contains('def'), false);
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
