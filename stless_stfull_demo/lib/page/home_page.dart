import 'package:flutter/material.dart';
import 'package:stless_stfull_demo/widget/my_little_square.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Strless / Strful Widget'),
      ),
      body: Center(
        child: SizedBox(
          child: MyLittleSquare(Colors.deepPurple),
          height: 150.0,
          width: 150.0,
        ),
      ),
    );
  }
}
