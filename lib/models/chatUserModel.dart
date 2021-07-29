
import 'package:flutter/cupertino.dart';

class ChatUsers{
  final name;
  final text;
  final isread;
  final imageurl;
  final time;
  ChatUsers({required this.imageurl,required this.name,required,required this.time,required this.text,required this.isread});
}


final ChatUsers dad = ChatUsers(name: "Dad",imageurl: "assets/images/dad.jpg",text: "HAe",isread: false,time: "8:20");