import 'package:chat/screens/chatpagescreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home"),backgroundColor: Colors.green,centerTitle: true,),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey.shade600,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        unselectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        type:  BottomNavigationBarType.fixed,
        items: [
           BottomNavigationBarItem(
             icon: Icon(Icons.message),
             title: Text("Chats")
             ),
             BottomNavigationBarItem(
             icon: Icon(Icons.group_work),
             title: Text("Channels")
             ),
             BottomNavigationBarItem(
             icon: Icon(Icons.account_box),
             title: Text("Profile")
             ),
        ],
        ),
      body: ChatPage(),
    );
  }
}