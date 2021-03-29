class IllegalOperationException implements Exception {
  final String cause;

  IllegalOperationException(this.cause);

  String errMsg() => cause;
}
