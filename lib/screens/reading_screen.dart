import 'package:flutter/material.dart';
import '../main.dart';
import 'input_screen.dart';
import 'dart:async';

String removeEnters(String s) {
  String h = "";
  for (int i = 0; i < s.length; i++) {
    if (s[i] == '\n') {
      h += " ";
    } else {
      h += s[i];
    }
  }
  return h;
}

class ReadingPage extends StatefulWidget {
  const ReadingPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<ReadingPage> createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  bool isRunning = false;

  final to_read = removeEnters(read_text).split(' ');
  int ind = 0;

  Timer? timer;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(
        Duration(milliseconds: (60 * 1000 / speed).floor()),
        (Timer t) => setState(() {
              if (isRunning && ind < to_read.length - 1) {
                ind++;
              }
            }));
  }

  @override
  void dispose() {
    timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      body: Center(
        child: Text(
          to_read[ind],
          style: TextStyle(
              color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            isRunning = !isRunning;
          });
        },
        backgroundColor: Colors.yellow,
        icon: Icon(isRunning ? Icons.pause : Icons.play_arrow_rounded,
            color: Colors.white),
        label: Text(
          isRunning ? "Pause" : "Run",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
