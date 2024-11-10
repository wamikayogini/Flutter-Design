import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:splash/home_page.dart';
import 'package:splash/settings_page.dart';

class Hiddendrawer extends StatefulWidget {
  const Hiddendrawer({super.key});

  @override
  State<Hiddendrawer> createState() => _HiddendrawerState();
}

class _HiddendrawerState extends State<Hiddendrawer> {
  List<ScreenHiddenDrawer> _pages = [];

  final myTextStyle = TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.white,
          );
  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'HomePage', 
          baseStyle: myTextStyle,
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.black,
          ),
         HomePage(),
         ),
         ScreenHiddenDrawer(
        ItemHiddenMenu(
          name: 'Settings', 
          baseStyle: myTextStyle, 
          selectedStyle: myTextStyle,
          colorLineSelected: Colors.black,
          ),
         SettingsPage(),
         ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.deepPurpleAccent,
      screens: _pages,
      initPositionSelected: 0,
      slidePercent: 50,
      contentCornerRadius: 40,
      //boxShadow: [],
    );
  }
}