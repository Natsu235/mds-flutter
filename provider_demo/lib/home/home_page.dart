import 'package:flutter/material.dart';
import 'package:provider_demo/home/widget/counter_action.dart';
import 'package:provider_demo/home/widget/counter_info.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Provider Demo'),
      ),
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CounterInfo(),
                Container(height: 42.0),
                CounterAction(),
                Container(height: 128.0),
                Text(
                  'Dorian PILORGE',
                  style: TextStyle(fontStyle: FontStyle.italic),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
