import 'package:flutter/material.dart';

class PaddingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 25.0,
                  height: 25.0,
                  color: Colors.green,
                ),
              ),
              Container(
                width: 25.0,
                height: 25.0,
                color: Colors.red,
              ),
              Container(
                width: 24.0,
              ),
              Container(
                width: 25.0,
                height: 25.0,
                color: Colors.yellow,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  width: 25.0,
                  height: 25.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
