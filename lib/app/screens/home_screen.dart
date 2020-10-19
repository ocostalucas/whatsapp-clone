import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/screens/chat_screen.dart';
import 'package:whatsapp_clone/app/widgets/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: CustomAppBar(),
        body: TabBarView(
          children: <Widget>[
            ChatScreen(),
            Text('Page Status'),
            Text('Page Chamada')
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(
              Icons.chat,
              color: Colors.white,
            ),
            onPressed: () {}),
      ),
    );
  }
}
