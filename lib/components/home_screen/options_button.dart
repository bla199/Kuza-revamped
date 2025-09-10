import 'package:flutter/material.dart';
export 'options_button.dart';

class OptionsButton extends StatelessWidget {
  const OptionsButton({super.key,
   required 
   this.buttonIcon,
   this.buttonName = '',
   required this.routeTo,
   });

   final IconData buttonIcon;
   final String buttonName;
   final Widget routeTo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 11.0, vertical: 30.0),
          child: 
            OutlinedButton(onPressed: () {
              Navigator.push(context,
               MaterialPageRoute(builder: (context){
                return routeTo;
               },
               ),
               );

            },style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.all(Radius.circular(24))
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(buttonIcon, color: Colors.black, size: 25,
                  
                  ),
                ),
                SizedBox(width: 10,),
                Text(buttonName, 
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.normal
                ) ,),
              ],
            )
            )
        
      );
    
  }
}