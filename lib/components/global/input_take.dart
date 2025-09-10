import 'package:flutter/material.dart';
export 'input_take.dart';

enum InputType{ text, password, number, dropdown}

class InputTake extends StatefulWidget {

  final String title;
  final TextEditingController name;
  final String? label;
  final InputType inputType;
  final String? dropDownlabel;
  final String? dropDownValue;
  final TextInputType? keyboardType;
  final String? selectedValue;
  final List<String>? dropdownItems;
  final Function(String?)? onChanged;
  


     const InputTake({
        super.key,
            required this.title,
            required this.name,
            this.label,
            required this.inputType,
            this.dropDownlabel,
            this.dropDownValue,
           this.keyboardType,
           this.selectedValue,
           this.dropdownItems,
           this.onChanged
            

             });

  @override
  State<InputTake> createState() => _InputTakeState();
}

class _InputTakeState extends State<InputTake> {

     String? selectedValue;

  @override
  Widget build(BuildContext context) {
  
  
  
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.title, style:TextStyle(
            fontFamily: 'Arial',
            fontWeight:  FontWeight.w400,
            fontSize: 15
          )),
          SizedBox(height:15),
      
           widget.inputType == InputType.dropdown
              ? 
                DropdownButtonFormField<String>(
                  value: selectedValue,
                  isExpanded: false,
                    items: (widget.dropdownItems ?? [])
                        .map((e) => DropdownMenuItem(value: e, child: 
                          Text(e,
                          style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.w500
                            
                          ),
                        )))
                        .toList(),
                    onChanged: (val) {
                      setState(() {
                        selectedValue = val;
                        widget.name.text = val ?? "";
                
                      });
                
                      //callback for parent to update next dropdown
                
                      if(widget.onChanged != null){
                        widget.onChanged!(val);
                      }
                    },
                
                    decoration: InputDecoration(
                      floatingLabelBehavior:FloatingLabelBehavior.never,
                      labelText:widget.dropDownlabel,
                      filled: true,
                      fillColor: Colors.black12,
                      labelStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.grey
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(40)),
                        borderSide: BorderSide.none,
                        
                      ),
                 
                      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8)
                    ),
                
                    
                  )
              
              :
          TextField(
            controller: widget.name,
            style: TextStyle(
              fontWeight: FontWeight.w500
            ),
            decoration: InputDecoration(
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelText:widget.label,
              labelStyle: TextStyle(
                color: Colors.black54,
                fontSize: 12,
              ),
      
                enabledBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(40),
                   borderSide: const BorderSide(color: Color.fromARGB(255, 164, 161, 161),),
      ),
                focusedBorder: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(40),
                   borderSide: const BorderSide(color:  Color.fromARGB(255, 164, 161, 161), width: 2),
               ),  
              contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
             
            ),
          )
        ],
      ),
    );
  }
}