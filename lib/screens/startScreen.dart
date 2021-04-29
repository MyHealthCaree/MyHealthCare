import 'package:flutter/material.dart';
import 'package:my_first_app/addDoctor.dart';
import 'package:my_first_app/addPatient.dart';
import './loginPage.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Welcome To My Health Care'),
        backgroundColor: Colors.cyan[300],
      ),
      backgroundColor: Colors.red[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.cyan[300]),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AddDoctor();
                      });
                },
                child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    child: Text('Sign Up As A Doctor',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)))),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.cyan[300]),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AddPatient();
                      });
                },
                child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    child: Text('Sign Up As A Patient',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)))),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.cyan[300]),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return LoginPage();
                  }));
                },
                child: Container(
                    width: 150,
                    alignment: Alignment.center,
                    child: Text('Sign In',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))))
          ],
        ),
      ),
    );
  }
}
