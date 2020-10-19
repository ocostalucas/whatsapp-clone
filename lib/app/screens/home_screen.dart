import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/screens/chat_screen.dart';
import 'package:whatsapp_clone/app/widgets/custom_app_bar.dart';
import 'package:whatsapp_clone/app/widgets/search_app_bar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController _controller;
  bool isSearch = false;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 3, initialIndex: 0, vsync: this);

    _controller.addListener(() {
      setState(() {
        isSearch = false;
      });
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void showSearchAppbar() {
    setState(() {
      isSearch = true;
    });
  }

  void hideSearchAppbar() {
    setState(() {
      isSearch = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isSearch
          ? SearchAppBar(hideSearchAppbar: hideSearchAppbar)
          : CustomAppBar(
              showSearchAppbar: showSearchAppbar,
              controller: _controller,
            ),
      body: TabBarView(
        controller: _controller,
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
    );
  }
}
