import 'package:flutter/material.dart';

class Messages extends StatelessWidget {

  @override
  Widget build(BuildContext context) 
  
  
  {

    final Mycontroller=TextEditingController();
    final FocusNode myfocus = FocusNode();
    final Color = Theme.of(context).colorScheme;


    return TextFormField(

      onTapOutside:(event) => myfocus.unfocus(),
      focusNode: myfocus,
      controller: Mycontroller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(borderRadius:BorderRadius.circular(30),
        borderSide:BorderSide(color: Color.primary )
        ),
        filled: true,
        fillColor: Colors.purple[100],
        suffixIcon: IconButton(onPressed: () {
          final textValue=Mycontroller.value.text;
          print('button icon ${textValue}');
          Mycontroller.clear();
        },
        icon: const Icon(Icons.send))
      ),
      onFieldSubmitted: (value) {
        print('Submmit value ${value}');
        Mycontroller.clear();
      },
      onChanged: (value) {
        print('Changed value: ${value}');
      },
    );
  }
}