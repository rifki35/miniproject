import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:login/model/auth_model.dart';

class AuthApi {
  Future<AuthModel> login(
      {required String email, required String password}) async {
    var body = {"email": email, "password": int.parse(password)};
    Dio dio = Dio();

    String dataBody = jsonEncode(body);
    Response response = await dio.post(
      'http://restapi.adequateshop.com/api/authaccount/login',
      data: dataBody,
    );
    return AuthModel.fromJson(response.data);
  }
}
