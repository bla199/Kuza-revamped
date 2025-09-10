import 'package:flutter/material.dart';
import 'package:kuza_revamped/Screens/home/home_screen.dart';
import 'package:kuza_revamped/components/index.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class CodeVerification extends StatefulWidget {
  const CodeVerification({super.key, required this.phoneNumber});

  final String phoneNumber;


  @override
  State<CodeVerification> createState() => _CodeVerificationState();
}

class _CodeVerificationState extends State<CodeVerification> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: IconButton(onPressed: () {
          return Navigator.pop(context);
        },
         icon: Icon(Icons.arrow_back)),
        centerTitle: true,
          title: PageTitle(text: 'Jisajili',),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(40.0),
            child: Column(      
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 20),
                  
                  Text.rich(
                    TextSpan(
                    children: [
                      TextSpan (text:'Ingiza code iliyotumwa',
                      style: TextStyle(
                        color: Colors.black54
                      )
                    ),
                    WidgetSpan(
                      child: SizedBox(width: 8), // Horizontal space
                      ),
                    TextSpan(
                      text: widget.phoneNumber,
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      )
                    )
                    ],
                  ),),
                    
                  SizedBox(height: 20,),  
                    
              
      
                          OtpTextField(
                            numberOfFields: 4,
                            borderWidth: 1,
                            showFieldAsBox: true,
                            fieldHeight: 60.0,
                            fieldWidth: 55.0,
                            margin: const EdgeInsets.all(8),
                            borderRadius: BorderRadius.circular(30.0),
                            borderColor: Colors.black26,
                            focusedBorderColor: Colors.black45,
                            enabledBorderColor: Colors.black26,
                            
                                      
                          ),
                        ],
                    
  
            ),

        ),
      ),

      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(40.0),
        child: FilledButton(
          onPressed: () {
            Navigator.pushReplacement(context,
            
            MaterialPageRoute(builder: (context) {
              return HomeScreen();
                }
           ),
          );

        },style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.black)
        ),
         child: Text('Endelea')),
      )
    );
  }
}