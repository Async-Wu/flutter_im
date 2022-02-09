
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterim/chat/message_data.dart';
import 'package:flutterim/chat/message_item.dart';

class MessagePage extends StatefulWidget{
  @override
  MessagePageState createState() => new MessagePageState();
}

class MessagePageState extends State<MessagePage>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
            itemCount: messageData.length,
            itemBuilder: (BuildContext context,int index){
              return new MessageItem(messageData[index]);
            }),
    );
  }

}