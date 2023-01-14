//This class is created to customize [Exception] class.
class ApiException implements Exception {
  //This creates new instance of [ApiException]
  ApiException(this.message);

  //The message is of type [dynamic] which takes what ever error object is
  //passed.
  final dynamic message;

  @override
  String toString() {
    if (message is String) {
      return message;
    }
    return 'Error: $message';
  }
}
