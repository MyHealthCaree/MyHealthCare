import 'package:flutter/material.dart';

class OurTeam extends StatefulWidget {
  @override
  _OurTeamState createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Us"),
        backgroundColor: Colors.cyan[300],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Text(
                "Team 19IT055 and 19IT048",
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                  child: Image.asset(
                    "assets/farhan.jpg",
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30)),
              SizedBox(
                height: 20,
              ),
              Text(
                "Farhan Khatri",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: Image.asset(
                    "assets/drashti.jpg",
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 30)),
              SizedBox(
                height: 20,
              ),
              Text(
                "Drashti Jhaveri",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "Students of Charusat University",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
