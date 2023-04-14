import 'package:flutter/material.dart';
import 'package:flutter__app/home_page.dart';
import 'package:flutter__app/login_page.dart';
import 'package:flutter__app/setting_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIndex = 0;

  setCurrentIndex(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Flutter App")),
        body: [
          const HomePage(),
          const LoginPage(),
          const SettingsPage(),
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          unselectedItemColor: Colors.brown,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home, color: Colors.black),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, color: Colors.green),
              label: "Login",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings, color: Colors.blueGrey),
              label: "Paramètre",
            ),
          ],
        ),
      ),
    );
  }
}