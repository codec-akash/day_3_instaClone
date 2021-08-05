import 'package:flutter/material.dart';
import 'package:instaclone/screen/api_home_screen.dart';
import './screen/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ApiHome(),
    );
  }
}
