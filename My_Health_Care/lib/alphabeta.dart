import 'package:flutter/material.dart';

class alphabeta extends StatelessWidget {
  String abc;
  alphabeta(this.abc);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Text(
        abc,
        textAlign: TextAlign.center,
      ),
    );
  }
}
