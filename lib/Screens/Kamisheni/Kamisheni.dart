import 'package:flutter/material.dart';
import 'package:kuza_revamped/components/global/dashes.dart';
import 'package:kuza_revamped/components/home_screen/text_message.dart';

class Kamisheni extends StatefulWidget {
  const Kamisheni({super.key});


  @override
  State<Kamisheni> createState() => _KamisheniState();
}

String selectedValue = 'Leo';

class _KamisheniState extends State<Kamisheni> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Title(color: Colors.black,
         child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Kamisheni',
            style: TextStyle(
              fontSize: 18,
            ),
            ),

            DropdownButton(
               value: selectedValue,
                    items: ['', 'Leo', 'Jana']
                  .map((option) => DropdownMenuItem(
                    value: option,
                    child: Text(option,
                    style: TextStyle(),),
                  ))
                  .toList(),
                  
                     onChanged: (newValue){
                      setState(() {
                        selectedValue = newValue!;
                      });
                     },
                     underline: SizedBox(),
                     style: TextStyle(
                      color: Colors.black,
                      fontSize: 18
                     ),
                  
                     ),   
          ],
         ),
         ),
      ),


      body: 
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          child: 
          Column(
            children: [
              TextMessage(textIcon: Icons.add_to_photos_rounded,
              textTitle: 'Malipo',),

              Dashes(),
              SizedBox(height: 20,),

              TextMessage(textIcon: Icons.wallet,
              textTitle: 'Madeni',),

              Dashes()
        
            ],
        
          ),
        ),
      ),
    );
  }
}