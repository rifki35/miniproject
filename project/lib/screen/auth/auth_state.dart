import 'package:flutter/cupertino.dart';
import 'package:login/model/api/auth_api.dart';
import 'package:login/model/auth_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthState extends ChangeNotifier {
  AuthApi authApi = AuthApi();
  AuthModel authModel = AuthModel();
 

  Future<void> login({required String email, required String password}) async {
     SharedPreferences sharedPreferences = await SharedPreferences.getInstance();

    authModel = await authApi.login(email: email, password: password); 
    if(authModel.data!.email !=null){
    sharedPreferences.setString('email', authModel.data!.email !);
    sharedPreferences.setString('password', password);
    
    } notifyListeners();
  }
}
