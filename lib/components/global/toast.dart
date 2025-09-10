import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void toastFunct({required BuildContext context, required String message}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    fontSize: 20
  );
}