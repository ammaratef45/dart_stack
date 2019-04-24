# dart_stack
A dart package for stack datastructure

[![codecov](https://codecov.io/gh/ammaratef45/dart_stack/branch/master/graph/badge.svg)](https://codecov.io/gh/ammaratef45/dart_stack)
[![CircleCI](https://circleci.com/gh/ammaratef45/dart_stack.svg?style=svg)](https://circleci.com/gh/ammaratef45/dart_stack)

# Usage
Add dev dependency to your `pubspec.yaml`:

```yaml
dev_dependencies:
  stack: ^0.0.1
```

Run `pub get` to install.

# How it works
Import
```Dart
import 'package:stack/stack.dart';
```
Example
```Dart
// Initialize
Stack<String> stack = Stack();
// Push
stack.push('abc');
// See the top
stack.top();
// Pop the top
stack.pop();
// Check for empty
stack.isEmpty;
// Check for non-enpty
stack.isNotEmpty;
```


Feel free to file feature requests and bug reports at the
[issue tracker][].

[issue tracker]: https://github.com/ammaratef45/dart_stack/issues
