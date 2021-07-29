import 'package:chat/models/chatUserModel.dart';
import 'package:flutter/cupertino.dart';

class ChatMessage{
  final messageType;
  final messageContent;
  final ChatUsers sender;

  ChatMessage({required this.messageContent,required this.messageType,required this.sender});
}