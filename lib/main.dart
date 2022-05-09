import 'package:flutter/material.dart';
import 'package:hello_test/app_bar_mixin.dart';
import 'package:hello_test/first_page.dart';
import 'package:hello_test/second_page.dart';
import 'package:hello_test/third_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  static List<AppBarWidget> widgets() => [
        const FirstPage(),
        SecondPage(
          nowTime: DateTime.now(),
        ),
        const ThirdPage(),
      ];

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: MyHomePage.widgets()[_selectedIndex].appBar(),
        body: MyHomePage.widgets()[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.school), label: 'School'),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: 'Setting'),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
      );
}
