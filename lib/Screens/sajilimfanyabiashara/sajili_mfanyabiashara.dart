import 'package:flutter/material.dart';
import 'package:kuza_revamped/Screens/wafanyabiashara/wafanyabiashara.dart';
import 'package:kuza_revamped/components/index.dart';

class SajiliMfanyabiashara extends StatefulWidget {
  const SajiliMfanyabiashara({super.key});

  @override
  State<SajiliMfanyabiashara> createState() => _SajiliMfanyabiasharaState();
}

class _SajiliMfanyabiasharaState extends State<SajiliMfanyabiashara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title:  PageTitle(text: 'Sajili Mfanyabiashara'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                InputTake(
                  title: 'Jina la biashara',
                   name: TextEditingController(),
                    label: 'Ingiza namba yako ya simu',
                     inputType: InputType.text,
                     keyboardType: TextInputType.text,
                      dropDownlabel: ''),
          
          SizedBox(height: 30,),
          
                InputTake(title: 'Namba ya simu',
                 name: TextEditingController(),
                  label: 'Ingiza namba yako ya simu',
                   inputType: InputType.number,
                    keyboardType: TextInputType.text,
                    dropDownlabel: ''),
          
          SizedBox(height: 30,),
          
          InputTake(title: 'Aina ya biashara',
           name: TextEditingController(),
            label: '',
             inputType: InputType.dropdown,
              dropDownlabel: 'Chagua'),  
          
           SizedBox(height: 30,),  
          
           InputTake(title: 'Mkoa Alipo',
            name: TextEditingController(),
             label: '',
              inputType: InputType.dropdown,
               dropDownlabel: 'Mkoa'),
          
           SizedBox(height: 30,),      
          
           InputTake(title: 'Wilaya alipo',
            name: TextEditingController(),
             label: '',
              inputType: InputType.dropdown,
               dropDownlabel: 'Wilaya'),                         
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: 
      Padding(
        padding: EdgeInsetsGeometry.all(40),
        child: FilledButton(onPressed: () {
           Navigator.push(context,
           MaterialPageRoute(builder: (context) {
             return Wafanyabiashara();
           },
          ),
         );
        },
        style: ButtonStyle(
          backgroundColor: WidgetStateProperty.all(Colors.black)
        ),
         child: Text('Msajili')),
        ),

   );
  }
}