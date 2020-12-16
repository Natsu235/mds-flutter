import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/model/counter_model.dart';

class CounterAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        FlatButton(
          onPressed: () {
            Provider.of<CounterModel>(context, listen: false).increment();
          },
          child: Text(
            'Add',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
        ),
        Container(width: 12.0),
        FlatButton(
          onPressed: () {
            Provider.of<CounterModel>(context, listen: false).decrement();
          },
          child: Text(
            'Remove',
            style: TextStyle(color: Colors.white),
          ),
          color: Colors.blue,
        ),
      ],
    );
  }
}
