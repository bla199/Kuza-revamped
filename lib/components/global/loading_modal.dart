import 'package:flutter/material.dart';


Widget loadingModal(BuildContext context,{
    String? message
    }){


   return Center(
    child: Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: ModalBarrier(
            dismissible: false,
            color: const Color.fromARGB(255, 0, 0, 0),
          ),
          ),

          Center(
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              
              ),

              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircularProgressIndicator(
                    color: Colors.black54,
                  ),
                  if(message != null) ... [
                    const SizedBox(height: 15,),
                    Text(
                      message,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      
                    )
                  ]
                ],
              ),
            ),
          )
      ],
    ),
  );
}