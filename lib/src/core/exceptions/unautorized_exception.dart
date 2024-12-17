class UnautorizedException implements Exception {
  final String message;

  UnautorizedException({required this.message});
}
