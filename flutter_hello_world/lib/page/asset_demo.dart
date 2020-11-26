import 'package:flutter/material.dart';

class AssetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Asset Demo'),
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/pokeball.png",
            ),
          ),
        ),
      )),
    );
  }
}
