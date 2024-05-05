class AppException implements Exception {
  final String? message;
  final String? prefix;

  AppException([this.message, this.prefix]);
  @override
  String toString() {
    return '$prefix:$message';
  }
}

class InternetException extends AppException {
  InternetException([String? message]) : super(message, "No internet");
}

class FetchDataException extends AppException {
  FetchDataException([String? message])
      : super(message, "Fetch data exception");
}

class ServerException extends AppException {
  ServerException([String? message]) : super(message, "Internal server error");
}

class RequestTimeoutEception extends AppException {
  RequestTimeoutEception([String? message]) : super(message, "Timeout");
}
