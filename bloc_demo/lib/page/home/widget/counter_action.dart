import 'package:bloc_demo/bloc/counter/counter_bloc.dart';
import 'package:bloc_demo/bloc/counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterAction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        RaisedButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(CounterEventIncrement());
          },
          color: Colors.blue,
          child: Text(
            'Increment',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Container(width: 12.0),
        RaisedButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(CounterEventDecrement());
          },
          color: Colors.blue,
          child: Text(
            'Decrement',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
