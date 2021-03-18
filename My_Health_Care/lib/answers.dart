import 'package:flutter/material.dart';

class Answers extends StatelessWidget {
  Function func;
  Answers(this.func);
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Option'),
      onPressed: func,
    );
  }
}
