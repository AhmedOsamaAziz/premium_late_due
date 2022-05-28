class AppExceptions implements Exception {
  final String? message;
  final String? prefix;
  final String? url;

  AppExceptions([this.message, this.prefix, this.url]);
}

class BadRequestException extends AppExceptions {
  BadRequestException([String? message, String? url])
      : super(message, 'Bad Request', url);
}

class FetchDataException extends AppExceptions {
  FetchDataException([String? message, String? url])
      : super(message, 'Unable To Fetch Data', url);
}

class ApiNotRespondingException extends AppExceptions {
  ApiNotRespondingException([String? message, String? url])
      : super(message, 'API Not Responding', url);
}

class UnAuthorizedException extends AppExceptions {
  UnAuthorizedException([String? message, String? url])
      : super(message, 'UnAuthorized Request', url);
}
