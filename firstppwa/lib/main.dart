import 'package:flutter/material.dart';
import './answers.dart';
import './alphabeta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var question = ['First Question', 'Second Question'];
  var a = 0;
  void changequest() {
    print('Button Pressed');
    setState(() {
      a++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Health Care'),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                        child: Image.asset(
                      "assets/logo.png",
                      width: 137,
                      height: 137,
                    ))
                  ],
                ),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(14, 49, 80, 1),
                ),
              ),
              ListTile(
                title: Text('Doctors Near Me'),
                onTap: () {
                  print('DOctors near me pressed');
                },
              ),
              ListTile(
                title: Text('Chatbot'),
                onTap: () {
                  print('chatbot pressed');
                },
              ),
              ListTile(
                title: Text('Home Remedies'),
                onTap: () {
                  print('Home Remedies pressed');
                },
              ),
              ListTile(
                title: Text('Add Own Remedies'),
                onTap: () {
                  print('Add Own Remedies pressed');
                },
              ),
              ListTile(
                title: Text('About Us'),
                onTap: () {
                  print('About Us pressed');
                },
              ),
            ],
          ),
        ),
        body: Column(children: [
          alphabeta(question[a]),
          Answers(changequest),
          Answers(changequest),
        ]),
      ),
    );
  }
}
