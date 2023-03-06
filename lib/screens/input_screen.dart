import 'package:flutter/material.dart';
import '../main.dart';
import 'reading_screen.dart';

class TextInputPage extends StatefulWidget {
  const TextInputPage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<TextInputPage> createState() => _TextInputPageState();
}

class _TextInputPageState extends State<TextInputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        elevation: 0,
        centerTitle: true,
        toolbarHeight: 70,
        title: Text("Readly",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 25)),
      ),
      body: Column(children: [
        ListTile(
          title: Text(
            "Select speed:",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          leading: Icon(Icons.speed, color: Colors.white),
        ),
        SizedBox(
          height: 50,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(
                height: 40,
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: speed != 250 ? Colors.yellow : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "250 wpm",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    setState(() {
                      speed = 250;
                    });
                  },
                )),
              ),
              Container(
                height: 40,
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: speed != 300 ? Colors.yellow : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "300 wpm",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    setState(() {
                      speed = 300;
                    });
                  },
                )),
              ),
              Container(
                height: 40,
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: speed != 350 ? Colors.yellow : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "350 wpm",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    setState(() {
                      speed = 350;
                    });
                  },
                )),
              ),
              Container(
                height: 40,
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: speed != 400 ? Colors.yellow : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "400 wpm",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    setState(() {
                      speed = 400;
                    });
                  },
                )),
              ),
              Container(
                height: 40,
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: speed != 450 ? Colors.yellow : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "450 wpm",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    setState(() {
                      speed = 450;
                    });
                  },
                )),
              ),
              Container(
                height: 40,
                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: speed != 500 ? Colors.yellow : Colors.grey,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                    child: TextButton(
                  child: Text(
                    "500 wpm",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    setState(() {
                      speed = 500;
                    });
                  },
                )),
              )
            ],
          ),
        ),
        SizedBox(height: 20),
        SizedBox(
            height: MediaQuery.of(context).size.height - 200,
            width: MediaQuery.of(context).size.width,
            child: ListTile(
              //padding: EdgeInsets.all(40),
              leading: Icon(
                Icons.text_fields_rounded,
                color: Colors.white,
              ),
              title: TextField(
                onChanged: (text) {
                  read_text = text;
                },
                keyboardType: TextInputType.multiline,
                maxLines: null,
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                    hintText: "Your text here...",
                    hintStyle: TextStyle(color: Colors.white)),
              ),
            ))
      ]),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const ReadingPage(title: "")),
          );
        },
        backgroundColor: Colors.yellow,
        icon: Icon(Icons.rtt_rounded, color: Colors.white),
        label: Text(
          "Start reading",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
