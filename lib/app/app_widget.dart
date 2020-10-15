import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/screens/home_screen.dart';
import 'package:whatsapp_clone/app/themes/color.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primaryColor: kPrimaryColor,
          accentColor: kAccentColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
