import 'package:flutter/material.dart';
import 'package:kuza_revamped/Screens/Kamisheni/Kamisheni.dart';
import 'package:kuza_revamped/Screens/sajilimfanyabiashara/sajili_mfanyabiashara.dart';
import 'package:kuza_revamped/Screens/wafanyabiashara/wafanyabiashara.dart';
import 'package:kuza_revamped/components/index.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading:Transform.translate(
          offset: const Offset(25, 2),

              child: Center(
                child: 
                CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.black12,
                  child: Icon(Icons.person, color: Colors.black87, size: 30,),
                ), ),
             ),
      ),

      body: SingleChildScrollView(
        child: Padding(padding: EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Stack(
                      children:[ Container(
                      height: 230,
                        decoration: BoxDecoration(
                          color: Colors.black54,
                          image: DecorationImage(
                            image: AssetImage(bundle: null,'assets/images/card.JPG'),
                          fit: BoxFit.cover,
                          ),
                          border: Border.all(
                            color: Colors.black26),
                            borderRadius: BorderRadius.all(Radius.circular(50))
                          ),
                        ),
              
                          Positioned(
                            top: 30,
                            left: 30,
                            child:
                             Text('Prosper Absalam Chidimba',
                             style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                             ),
                            ),
                           ),
              
                          Positioned(
                            top: 60,
                            left: 30,
                            child: Text(
                              '19831293-11103-0000-226',
                              style: TextStyle(
                                color: Colors.white54,
                                fontSize: 15,
                            ),
                           ),
                          ),
              
                          Positioned(
                            bottom: 60,
                            left: 30,
                            child: Text('Kamisheni',
                            style: TextStyle(
                              color: Colors.white54
                            ),
                           ),
                          ),
              
                          
                          Positioned(
                            bottom: 20,
                            left: 30,
                            child: Text.rich(
                              TextSpan(
                                children:[
                                  TextSpan(
                                    text:'0.00',
                                      style: TextStyle(
                                       color: Colors.white,
                                        fontSize: 30,
                            ),
                                  ),
              
                          WidgetSpan(
                            child: Padding(
                              padding: const EdgeInsets.only(left:5.0),
                              child: Text('TZS',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                 ),
                           ],                    
                         ),
                       ),
                      ),
              
                      Positioned(
                        right: 30,
                        bottom: 25,
                        child: 
                        Icon(Icons.visibility_off_outlined,
                        color: Colors.white,
                        size: 25,
                        ),
                        ),
              
                       
                    ],
                  ),
                 ),            
               ],
              ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OptionsButton(
                      routeTo: Kamisheni(),
                      buttonIcon:
                       Icons.wallet,
                       buttonName: 'Kamisheni'
                       ),
                    OptionsButton(
                      routeTo: Wafanyabiashara(),
                      buttonIcon:
                       Icons.groups_2_outlined,
                        buttonName: 'Wafanyabiashara'
                        ),
                  ],
                ),
        
             Align(
              alignment: Alignment.centerLeft,
               child: Text.rich(
                TextSpan(
                  children:[
                    TextSpan (
                      text:'Quick access',
                      style: TextStyle(
                        fontSize: 16,
            
                      ),
                    ),
                    TextSpan(
                      text: ' - This week',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 16,
                      )
                    )
                  ],
                 ),             
               ),
             ),
        
             SizedBox(height: 20,),
             
             TextMessage(textIcon: Icons.wallet_rounded,
                          textTitle: 'Malipo', 
                          ),
             
             Dashes(),
        
             SizedBox(height: 20,),
        
             TextMessage(textIcon: Icons.groups_2_outlined,
                         textTitle: 'Umejisajjili' ,),
              Dashes()
        
            
        
            ],
          ),   
        ),
      ),    
      floatingActionButton: 
      Align(alignment: Alignment.bottomRight,
      child: SizedBox(
        width: 220,


      child: FilledButton(onPressed: () {

        Navigator.push(context,
        MaterialPageRoute(builder: (context) {
          return SajiliMfanyabiashara();
        },
        ),

        );
        
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.black),
        
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 10,),
          Text('Sajili Mfanyabiashara'),
        ],
      )),  
      ) 
    )
    );
  }
}