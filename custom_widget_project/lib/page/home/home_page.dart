import 'package:custom_widget_project/page/home/widget/counter_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _countValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom Widget Exemple'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Counter: $_countValue',
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: CounterButton(_onButtonPressed),
              ),
            ),
          ),
        ],
      ),
    );
  }

  _onButtonPressed() {
    print('Button pressed!');
    setState(() {
      this._countValue++;
    });
  }
}
