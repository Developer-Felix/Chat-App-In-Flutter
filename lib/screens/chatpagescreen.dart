import 'package:chat/models/chatUserModel.dart';
import 'package:chat/widgets/conversationList.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({ Key? key }) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(imageurl: "images/avatar.jpg",name: "Avatar",text: "hae",time: "8:30 pm",isread: false),
    ChatUsers(imageurl: "images/dad.jpg",name: "Dad",text: "hae",time: "8:30 pm",isread: true),
    ChatUsers(imageurl: "images/icon.jpg",name: "Icon",text: "hae",time: "8:30 pm",isread: false),
    ChatUsers(imageurl: "images/felix.jpg",name: "Felix",text: "hae",time: "8:30 pm",isread: true),
    ChatUsers(imageurl: "images/felix2.jpg",name: "Felix 2",text: "hae",time: "8:30 pm",isread: false),
    ChatUsers(imageurl: "images/google.jpg",name: "Google",text: "hae",time: "8:30 pm",isread: true),
    ChatUsers(imageurl: "images/icon.png",name: "Icon",text: "hae",time: "8:30 pm",isread: true),
    ChatUsers(imageurl: "images/silicon.jpg",name: "Silicon",text: "hae",time: "8:30 pm",isread: false),
    ChatUsers(imageurl: "images/tech.jpg",name: "Tech",text: "hae",time: "8:30 pm",isread: true),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16,right: 16,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text("Conversations",style: TextStyle(fontSize: 32,fontWeight: FontWeight.bold),),
                    Container(
                      padding: EdgeInsets.only(left: 8,right: 8,top: 2,bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green[50],
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,color: Colors.green,size: 20,),
                          SizedBox(width: 2,),
                          Text("Add New",style: TextStyle(fontSize: 14,fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
                    padding: EdgeInsets.only(top: 16,left: 16,right: 16),
                    child: TextField(
                    decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(Icons.search,color: Colors.grey.shade600, size: 20,),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide(
                     color: Colors.grey.shade100
          )
      ),
    ),
  ),
),

ListView.builder(
  itemCount: chatUsers.length,
  shrinkWrap: true,
  padding: EdgeInsets.only(top: 16),
  physics: NeverScrollableScrollPhysics(),
  itemBuilder: (context, index){
    return ConversationList(
      name: chatUsers[index].name,
      text: chatUsers[index].text,
      imageurl: chatUsers[index].imageurl,
      time: chatUsers[index].time,
      isMessageRead: chatUsers[index].isread,
    );
  },
),
          ],
        ),

        
      ),
    );
  }
}