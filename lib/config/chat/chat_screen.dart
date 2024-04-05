import "package:flutter/material.dart";
import "package:yes_no_app/config/chat/her_chat.dart";
import "package:yes_no_app/config/chat/message_field_box.dart";
import "package:yes_no_app/config/chat/my_chat.dart";

class ChatScreen  extends StatelessWidget {
  const ChatScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(4.0),
          child: CircleAvatar(
            backgroundImage: 
            NetworkImage("https://upload.wikimedia.org/wikipedia/commons/9/99/Emiliano_Zapata4.jpg"),
          ),
        ),
        title: const Text("Ale<3"),
        centerTitle: false,//Para centrar el texto
      ),
      body: const _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  const _ChatView();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            //Expanded(child: Container(color: Colors.black26))
            Expanded(child:ListView.builder(
              itemCount: 100,              
              itemBuilder:(context, index) {
                return (index % 2 ==0)
                ? HerMessageBubble()
                : const MyMessageBubble();
              },
            )
            ),
            Messages()
          ],
        ),
      ),
    );
  }
}