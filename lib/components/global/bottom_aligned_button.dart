import 'package:flutter/material.dart';
export 'bottom_aligned_button.dart';

class BottomAlignedButton extends StatelessWidget {
  const BottomAlignedButton({super.key,
  required,
   this.route ='',
   this.title ='',
  });

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       floatingActionButton: 
      Align(alignment: Alignment.bottomRight,
      child: SizedBox(
        width: 220,


      child: FilledButton(onPressed: () {

        Navigator.pushNamed(context, route

        );
        
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.black),
        
      ),
      child: Row(
        children: [
          Icon(Icons.add),
          SizedBox(width: 10,),
          Text('title'),
        ],
      )),  
      ) 
    )
      
    );
  }
}