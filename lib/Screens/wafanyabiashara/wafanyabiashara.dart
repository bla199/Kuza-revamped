import 'package:flutter/material.dart';
import 'package:kuza_revamped/Screens/sajilimfanyabiashara/sajili_mfanyabiashara.dart';
import 'package:kuza_revamped/components/index.dart';

class Wafanyabiashara extends StatefulWidget {
  const Wafanyabiashara({super.key});

  @override
  State<Wafanyabiashara> createState() => _WafanyabiasharaState();
}

String selectedValue = 'Leo';

class _WafanyabiasharaState extends State<Wafanyabiashara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Sajili Mfanyabiashara',
            style: TextStyle(
              fontSize: 18,
            ),
           ),
           Padding(
             padding: const EdgeInsets.only(right: 8.0),
             child: Container(  
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10)
              ),
             child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                     vertical: 1.0),
                  // decoration: BoxDecoration(backgroundBlendMode: ),
                  child: DropdownButton<String>(
                    value: selectedValue,
                    items: ['Leo', 'Jana']
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
                    )                          
                   ],
                  ),
                ),
               ),
            ],
          )
       ,
      ),

      body: Container(
        child: 
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextMessage(
                textIcon: Icons.groups_2_outlined,
                 textTitle: 'Umesajili',
              ),
          Dashes(),
          SizedBox(height: 20,),
              TextMessage(textIcon: Icons.local_activity_sharp,textTitle: 'Re-activate',),
              Dashes()
            ],
          ),
        ),
      ),

      floatingActionButton: 
      Align(alignment: Alignment.bottomRight,
      child: SizedBox(
        width:230,

       child:FilledButton(onPressed: () {
             Navigator.push(context,
             MaterialPageRoute(builder: (context) {
               return SajiliMfanyabiashara();
               
             },));
       }, style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.black),),
       
      child: Row(
       children: 
       [Icon(Icons.add),
       SizedBox(width: 10,),
         Text('Sajili mfanyabiashara'),
         ],
        )
       ),
      )

    ),
    
       

      

    );
  }
}