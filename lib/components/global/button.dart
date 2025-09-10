import 'package:flutter/material.dart';
export 'button.dart';

class Button extends StatelessWidget {
  final String text;
  
  const Button({super.key,
   required this.text});

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: () {
      
    }, child: Text(text));
  }
}