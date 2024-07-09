import 'package:flutter/material.dart';
import 'package:spincircle_bottom_bar/modals.dart';
import 'package:spincircle_bottom_bar/spincircle_bottom_bar.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: SpinCircleBottomBarHolder(
          bottomNavigationBar: SCBottomBarDetails(
              activeIconTheme: IconThemeData(color: Colors.pinkAccent),
              activeTitleStyle: TextStyle(color: Colors.pinkAccent),
              items: [
                SCBottomBarItem(
                    icon: Icons.home, onPressed: () {}, title: 'Home'),
                SCBottomBarItem(
                    icon: Icons.person, onPressed: () {}, title: 'Customers'),
                SCBottomBarItem(
                    icon: Icons.calendar_view_day_rounded,
                    onPressed: () {},
                    title: 'Holidays'),
                SCBottomBarItem(
                    icon: Icons.contact_phone,
                    onPressed: () {},
                    title: 'Contact us')
              ],
              circleItems: [
                SCItem(icon: Icon(Icons.menu_book), onPressed: () {}),
                SCItem(icon: Icon(Icons.food_bank), onPressed: () {}),
                SCItem(icon: Icon(Icons.add_to_home_screen), onPressed: () {})
              ]),
          child: Text('SpinCircleBottomNavigationBar')),
    );
  }
}
