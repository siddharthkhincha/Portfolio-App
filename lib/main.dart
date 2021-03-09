import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import './LoginScreen.dart';

//TODO: Integrate Firebase
//TODO: Employ login screen and backend functions
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String title = 'Text Recognition';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: MainPage(title: title),
    );
  }
}

class MainPage extends StatefulWidget {
  final String title;

  const MainPage({@required this.title});
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            LoginScreen(),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
