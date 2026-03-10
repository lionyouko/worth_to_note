class ListenTodoException implements Exception {
  final String message;

  ListenTodoException(this.message);

  @override
  String toString() {
    return 'ListenTodoException: $message';
  }
}
