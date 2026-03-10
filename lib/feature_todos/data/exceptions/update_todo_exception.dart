class UpdateTodoException implements Exception {
  final String message;

  UpdateTodoException(this.message);

  @override
  String toString() {
    return 'UpdateTodoException: $message';
  }
}
