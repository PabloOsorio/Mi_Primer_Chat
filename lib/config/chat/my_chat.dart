import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget {
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context) {

final Color = Theme.of(context).colorScheme;

    return Column(
      //mainAxisAlignment: MainAxisAlignment.start, "No se exactamente por que no sirve este metodo"
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Color.primary
          ),
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text("Mensajes que yo envie",
            style:TextStyle(color: Colors.white)
            ),
          ),
        ),
        const SizedBox(height: 10,)
      ],
    );
  }
}