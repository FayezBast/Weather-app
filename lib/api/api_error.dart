import 'package:http/http.dart' as http;

class ApiServiceError extends Error {
  final String message;
  final http.Response response;

  ApiServiceError(this.message, this.response);

  @override
  String toString() {
    return message;
  }
}
