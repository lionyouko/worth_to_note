class DeleteTodoException implements Exception {
  final String message;

  DeleteTodoException(this.message);

  @override
  String toString() {
    return 'DeleteTodoException: $message';
  }
}
