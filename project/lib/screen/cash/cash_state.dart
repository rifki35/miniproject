import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:login/model/cash_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CashState extends ChangeNotifier {
  List<CashModel> listCashModel = [];
  CashState(){
    getCashModel();
  }
  
  Future<void> addCashModel(CashModel cashModel) async {
    listCashModel.add(cashModel);
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final listJson = listCashModel.map((value) {
      return value.toMap();
    }).toList();
    final jsonString = jsonEncode(listJson);
    prefs.setString('listCashModel', jsonString);getCashModel();
    notifyListeners();
  }
static List<CashModel> fromList(List<dynamic> map) {
    return map.map((e) {
      return CashModel.fromMap(e);
    }).toList();
  }

  Future<void> getCashModel() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final result = prefs.getString('listCashModel');
    if (result != null) {
      final jsonString = jsonDecode(result);
      listCashModel = fromList(jsonString);
    }
    notifyListeners();
  }
}
