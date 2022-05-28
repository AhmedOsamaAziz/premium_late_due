import 'dart:convert';

import 'package:premium_late_due/app/data/enums/responseStatus.dart';
import 'package:premium_late_due/app/data/helper/genericResponse.dart';
import 'package:premium_late_due/app/data/models/userModel.dart';
import 'package:premium_late_due/app/data/network/network.dart';

class UserRepository {
  Future<GenericResponse> validateLogin(
      String userName, String password) async {
    try {
      Map data = {
        'username': 'ahmedosa',
        'password': 'xoxAYdw2sy+mpL/8cG3M/w=='
      };
      GenericResponse response = await NetWork()
          .post('http://127.0.0.1:8000/', 'cmsuser/check/', data);
      if (response.status == ResponseStatus.success) {
        User user = userFromJson(response.obj.body);
        return GenericResponse(status: ResponseStatus.success);
      }
      return GenericResponse(status: ResponseStatus.fail);
    } on Exception catch (e) {
      return GenericResponse(status: ResponseStatus.fail);
    }
  }
}
