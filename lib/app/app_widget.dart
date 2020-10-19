import 'package:flutter/material.dart';
import 'package:whatsapp_clone/app/controllers/theme_controller.dart';
import 'package:whatsapp_clone/app/screens/home_screen.dart';
import 'package:whatsapp_clone/app/themes/color.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: ThemeController.themeMode,
        builder: (_, themeMode, __) {
          return MaterialApp(
              themeMode: themeMode,
              darkTheme: ThemeData.dark().copyWith(
                  textTheme: TextTheme(
                      bodyText2: TextStyle(color: Colors.cyanAccent))),
              theme: ThemeData(
                primaryColor: kPrimaryColor,
                accentColor: kAccentColor,
                visualDensity: VisualDensity.adaptivePlatformDensity,
              ),
              debugShowCheckedModeBanner: false,
              home: HomeScreen());
        });
  }
}
