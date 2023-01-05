class AppException implements Exception {
  final String? _message;
  final String? _prefix;

  AppException(this._message, this._prefix);

  @override
  String toString() {
    return '$_message $_prefix';
  }
}

class FetchException extends AppException {
  FetchException(String? message)
      : super(message, 'ERROR DURING COMMUNICATION');
}

class BadRequestException extends AppException {
  BadRequestException(String? message) : super(message, 'INVALID REQUEST');
}

class UnauthorizedException extends AppException {
  UnauthorizedException(String? message)
      : super(message, 'UNAUTHORIZED REQUEST');
}

class InvalidException extends AppException {
  InvalidException(String? message) : super(message, 'INVALID EXCEPTION');
}
