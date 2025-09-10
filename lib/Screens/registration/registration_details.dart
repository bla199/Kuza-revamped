import 'package:flutter/material.dart';
import 'package:kuza_revamped/components/index.dart';
import 'package:kuza_revamped/Screens/registration/code_verification.dart';
import 'package:kuza_revamped/network/index.dart';
import 'package:kuza_revamped/network/models/registration_details.dart';
import 'package:kuza_revamped/network/services/index.dart';
// import 'package:kuza_revamped/services/input_print.dart';
import 'package:provider/provider.dart';
import '../../network/controllers/authentification/index.dart';


class RegistrationDetails extends StatefulWidget {
  const RegistrationDetails({super.key});

  @override
  State<RegistrationDetails> createState() => _RegistrationDetailsState();
}

class _RegistrationDetailsState extends State<RegistrationDetails> {

  final TextEditingController nameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController nidaController = TextEditingController();
  final TextEditingController mkoaController = TextEditingController();
  final TextEditingController wilayaController = TextEditingController();

  String fullName ='';
  String phoneNumber = '';
  String nidaNumber = '';
  String mkoa ='';
  String wilaya='';


    final Map<String, List<String>> regionWilaya = {
    "Dar Es Salaam": ["Ilala", "Kinondoni", "Temeke"],
    "Arusha": ["Arusha Urban", "Arumeru"],
    "Dodoma": ["Dodoma Urban", "Chamwino", "Bahi"],
    "Geita": ["Geita Town", "Chato", "Mbogwe"],
    "Iringa": ["Iringa Urban", "Kilolo"],
    "Morogoro": ["Morogoro Urban", "Kilombero"],
    "Kigoma": ["Kigoma Urban", "Uvinza"],
    "Kilimanjaro": ["Moshi", "Hai"],
  };

  List<String> wilayas = [];



  @override



  // void initState(){
  //   super.initState();

  //   nameController.text = UserSimplePreferences.getUsername();
  //   phoneController.text = UserSimplePreferences.getPhonenumber();
  //   nidaController.text = UserSimplePreferences.getNidanumber();

  // }
  


  Widget build(BuildContext context) {

    final authenticationManager = Provider.of<AuthenticationManager>(context);

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: PageTitle(text: 'Jisajili'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            children: [
             InputTake(
              title: 'Jina lako kamili',
               name: nameController,
                label: 'Ingiza namba yako ya simu',
                inputType: InputType.text,
                keyboardType: TextInputType.text,
                onChanged: (value) {
                  authenticationManager.updateName(name: fullName);
                } 
                ),



          
                SizedBox(height: 30,),


          //phone number inputfield
             InputTake(
              title: 'Namba ya simu',
              name: phoneController,
               inputType: InputType.number,
                label:'Ingiza namba yako ya simu',
                keyboardType: TextInputType.number,
                onChanged: (value){
                  authenticationManager.updatePhone(phone:phoneNumber);


                  if ('value'.length == 9){
                    
                  }
                },
                ),
          
                SizedBox(height: 30,),

            
          
                InputTake(
                  title:'Namba ya Nida' ,
                   name: nidaController,
                   dropDownlabel: "",
                    label: '1XXXXXX...............',
                    keyboardType: TextInputType.number,
                     inputType: InputType.number,
                     onChanged: (value) {
                      authenticationManager.updateNidaNumber(nidaNumber: nidaNumber);
                       
                     },
                     ),
                
                SizedBox(height: 30,),
          
                InputTake(
                  
                  title: 'Mkoa Unapopatikana',
                   name: mkoaController,
                    dropDownlabel: 'Mkoa',
                     inputType: InputType.dropdown,
                     dropdownItems: regionWilaya.keys.toList(),
                     onChanged: (val){

                      //cacheeeee
                      authenticationManager.updateMkoa(mkoa: mkoa);

                      //dependency dropdown
                      setState(() {
                        
                        mkoa = val ?? '';
                        wilayas = regionWilaya[val] ?? [];
                        wilayaController.text = '';
                      });
                     },
                     
                     ),
                     
          
                     SizedBox(height: 30,),
          
                InputTake(
                  title: 'Wilaya unayopatikana',
                   name: wilayaController,
                    dropDownlabel: 'Wilaya',
                     inputType: InputType.dropdown,
                     dropdownItems: wilayas,
                     onChanged: (val){
                            authenticationManager.updateWilaya(wilaya: wilaya);
                      setState(() {
                        wilaya = val ?? '';
                      });
                     },
                     ),  

                    SizedBox(height: 100,),
                
            
                ],
          
          ),
        ),

      ),

      bottomNavigationBar:Padding(
        padding: EdgeInsets.all(40),
        child: FilledButton(onPressed: () async {
        
        registrationAuthenticator(authenticationManager: authenticationManager, context: context);


        //model object from controllers

        final registrationModel = Registration(

          fullName: nameController.text,
           phoneNumber: phoneController.text,
            nidaNumber: nidaController.text,
             mkoa: mkoaController.text,
              wilaya: wilayaController.text,
              );

              await serverRequest(
                requestData: registrationModel.toJson(),
                endpoint: "",
              );

         setState(() {
          fullName = nameController.text;
          phoneNumber = phoneController.text;
          nidaNumber = nidaController.text; 
          mkoa = mkoaController.text;
          wilaya = wilayaController.text;
         });

        //  inputPrint(
        //   fullName: fullName,
        //   phoneNumber: phoneNumber,
        //   nidaNumber: nidaNumber,
        //   mkoa: mkoa,
        //   wilaya: wilaya,

        //   );
          
          //  await UserSimplePreferences.setUsername(nameController);
          //  await UserSimplePreferences.setPhonenumber(phoneController);
          //  await UserSimplePreferences.setNidanumber(nidaController);
          //  await UserSimplePreferences.setMkoa(mkoaController);
           
          Navigator.push(
            context,
          MaterialPageRoute(builder: (context) {
            return CodeVerification(phoneNumber:phoneController.text);
          },
          ),
          );
          
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.black)
        ),
         child: Text("Endelea")),
      )
    );
  }
}