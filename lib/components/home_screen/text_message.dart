import 'package:flutter/material.dart';
export 'text_message.dart';



class TextMessage extends StatefulWidget {
  const TextMessage({super.key,
  required
  this.textIcon,
  this.textTitle = '',
  });

  final IconData textIcon;
  final String textTitle;


  @override
  State<TextMessage> createState() => _TextMessageState();
}



class _TextMessageState extends State<TextMessage> {
  @override
  Widget build(BuildContext context) {
    return  Row(
            children: <Widget>[
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.black12,
                child: Icon(
                  (widget.textIcon),
                  color: Colors.black26,
                  size: 20,
                ),
              ),
              SizedBox(width: 15,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                (widget.textTitle)
                              ), ),
                        
                              Text('12-07-2024',
                              style: TextStyle(
                                color: Colors.black45
                              ),),
                          ],
                        ),
                      ),
                      // Text.rich(
                      //   TextSpan(
                      //     children: [
                      //       TextSpan(
                      //        text :(widget.textTitle),
                      //        style: TextStyle(
                      //         color: Colors.black
                      //        )
                      //       ),
                      //         WidgetSpan(
                      //           child: SizedBox(width: 180,
                      //           ),
                      //         ),
                  
                      //      TextSpan(
                      //        text :'12-07-2024',
                      //        style: TextStyle(
                      //         color: Colors.black38,
                      //        )
                      //       ),
                      //      ]
                      //    ),
                      //   ),
                  
                            
                  SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(right: 16.0),
                     child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Expanded(
                              child:Text.rich
                              (
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                      'Umepokea comission ya Tsh.500/= kwa kumsajili MtotoSpesho - 0678211211',
                                      style: TextStyle(
                                        color: Colors.black54
                                      )
                                    ),                                     
                                  ]                     
                                ),
                             ),                          
                          ),
                                       
                          Padding(
                     
                            padding: EdgeInsetsGeometry.directional(top: 20,),
                            child: 
                          Text(
                            '18:12',
                            style: TextStyle
                            (
                              color: Colors.black38
                            )),
                          ), 
                                             
                       ],                   
                     ),
                   ),          
                  ],
                                ),
                ),
            ],

     );
  }
}