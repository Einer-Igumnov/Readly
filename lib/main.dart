import 'package:flutter/material.dart';
import 'screens/input_screen.dart';
import 'screens/reading_screen.dart';

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: const TextInputPage(title: 'Flutter Demo Home Page'),
    );
  }
}

String read_text = "";
int speed = 400;
