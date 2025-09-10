//state managing for registartion details



import 'package:flutter/material.dart';
import 'package:kuza_revamped/network/controllers/app_cache.dart';


class AuthenticationManager extends ChangeNotifier{
  
  late String _phoneNumber = '';
  late String _code = '';
  late String _name = '';
  late String _nidaNumber = '';
  late String _mkoa = '';
  late String _wilaya = '';


  String get phoneNumber => _phoneNumber;
  String get code => _code;
  String get name => _name;
  String get nidaNumber => _nidaNumber;
  String get mkoa => _mkoa;
  String get wilaya => _wilaya;


//for cache user data

  final appCache =  UserSimplePreferences();



  void updateName({
    required String name
  }){
    _name = name;
    notifyListeners();
  }

  void updatePhone({
    required String phone
  }) {
    _phoneNumber = phone;
    notifyListeners();
  }


    void updateCode({
    required String code
  }){
    _code = code; 
    notifyListeners();
  }

  void updateNidaNumber({
    required String nidaNumber
  }){
    _nidaNumber = nidaNumber;
    notifyListeners();
  }

  void updateMkoa({
    required String mkoa
  }){
    _mkoa = mkoa;
    notifyListeners();
  }


  void updateWilaya({
    required String wilaya
  }){
    _wilaya = wilaya;
    notifyListeners();
  }


}