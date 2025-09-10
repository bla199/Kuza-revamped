import 'package:flutter/src/widgets/editable_text.dart';
import 'package:shared_preferences/shared_preferences.dart';

//for user cached infoo

class UserSimplePreferences {
  static late SharedPreferences _preferences;


 static const _keyUsername = 'nameController'; 
 static const _keyPhonenumber = 'phoneController';
 static const _keyNidanumber = 'nidaController';
 static const _keyMkoa = 'mkoaController';

  static Future init() async =>
  _preferences = await SharedPreferences.getInstance();

  static Future setUsername(TextEditingController nameController) async =>
        await _preferences.setString(_keyUsername, nameController.text);
  static String getUsername() => _preferences.getString(_keyUsername) ?? '';



  static Future setPhonenumber(TextEditingController phoneController) async =>
        await _preferences.setString(_keyPhonenumber, phoneController.text);
  static String getPhonenumber() => _preferences.getString(_keyPhonenumber) ?? '';


  static Future setNidanumber(TextEditingController nidaController) async =>
        await _preferences.setString(_keyNidanumber, nidaController.text);
  static String getNidanumber() => _preferences.getString(_keyNidanumber) ?? ''; 

  static Future setMkoa(TextEditingController mkoaController) async =>
        await _preferences.setString(_keyMkoa, mkoaController.text);
  static String getMkoa() => _preferences.getString(_keyMkoa) ?? '';
}
