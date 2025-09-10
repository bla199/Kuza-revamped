/*
This function is for checking the login page user 
then make an API request, else just toast merchant to enter valid details
*/

export 'registration_details.dart';

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kuza_revamped/components/global/toast.dart';
import 'package:kuza_revamped/components/index.dart';
import 'package:kuza_revamped/network/controllers/authentification/index.dart';
import 'package:kuza_revamped/network/models/registration_details.dart';
import 'package:kuza_revamped/network/index.dart';

void registrationAuthenticator({
  required AuthenticationManager authenticationManager,
  required BuildContext context,
  
})async{
  //validate phone number (9 digits after 255)

 if(authenticationManager.phoneNumber.length != 9){
   toastFunct(
    context: context,
    message: 'please enter a valid 9-digit phone number'
    );
  return;
 }
 final fullNumber = "255${authenticationManager.phoneNumber}";



  if (authenticationManager.name.isEmpty){
    toastFunct(
      context: context,
       message:'loading'
       );



//  show loading modal

showDialog(
  context: context,
   builder: (_) => 
    loadingModal(context,
    message: 'Signing in'
    )
    );



  final registration = Registration(
  fullName: authenticationManager.name,
  phoneNumber: "255${authenticationManager.phoneNumber}",
  nidaNumber: authenticationManager.nidaNumber,
  mkoa: authenticationManager.mkoa,
  wilaya: authenticationManager.wilaya,
);




    try {
      debugPrint('Attempting login with number: $fullNumber');




//nameAPI
      final registerName = await serverRequest(
      requestData: {'phone_number': registration.fullName},
       endpoint: ''
       );

      
//name response
      if( registerName['code'] == 200){
      context.pushNamed('code-verifiction');
      }

//phone number API
      final registerPhone = await serverRequest(
      requestData: {'phone_number': registration.phoneNumber},
      endpoint: '',
      );

      debugPrint('API response: $registerPhone');


//phone number response
      if (registerPhone['code'] == 200){
      context.pushNamed('Code-verification');
      }



      
//nidaAPI
      final registerNida = await serverRequest(
      requestData: {'phone_number': registration.nidaNumber},
       endpoint: ''
       );

      
//nida response
      if( registerNida['code'] == 200){
      context.pushNamed('code-verifiction');
      }

//mkoaAPI
      final registermkoa = await serverRequest(
      requestData: {'phone_number': registration.mkoa},
       endpoint: ''
       );

      
//mkoa response
      if( registermkoa['code'] == 200){
      context.pushNamed('code-verifiction');
      }

//wilaya API request
      final registerWilaya = await serverRequest(
      requestData: {'phone_number': registration.wilaya},
       endpoint: ''
       );

      
//wilaya response
      if( registerWilaya['code'] == 200){
      context.pushNamed('code-verifiction');
  


      }else{
      toastFunct(
        context: context,
         message: 'There was an issue while making request from the app');
    }




            //close loading modal

      Navigator.of(context).pop();




      } catch (e) {

      Navigator.of(context).pop();
      debugPrint('RegistrationError');
      context.pop();
      toastFunct(
        context: context,
         message: 'error');


  };
 }
}