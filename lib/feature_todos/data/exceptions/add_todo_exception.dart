class AddTodoException implements Exception {
  final String message;

  AddTodoException(this.message);

  @override
  String toString() {
    return 'AddTodoException: $message';
  }
}
