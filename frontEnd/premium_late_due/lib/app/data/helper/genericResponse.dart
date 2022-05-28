import 'package:premium_late_due/app/data/enums/responseStatus.dart';

class GenericResponse {
  String? message;
  var obj;
  int? code;
  ResponseStatus status;

  GenericResponse({this.message, this.obj, this.code, required this.status});
}
