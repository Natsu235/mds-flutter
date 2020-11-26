import 'package:flutter/material.dart';

class MyLittleSquare extends StatefulWidget {
  final Color initialColor;

  MyLittleSquare(this.initialColor);

  @override
  _MyLittleSquareState createState() => _MyLittleSquareState(
        this.initialColor,
      );
}

class _MyLittleSquareState extends State<MyLittleSquare> {
  Color _currentColor;
  int _counter = 0;

  _MyLittleSquareState(this._currentColor);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        color: _currentColor,
        child: Center(
          child: Text(
            _counter.toString(),
            style: TextStyle(
              fontSize: 42.0,
              color: Colors.white,
            ),
          ),
        ),
      ),
      onTap: _onWidgetTap,
    );
  }

  _onWidgetTap() {
    print('Widget clicked!');
    setState(() {
      _counter++;
      if (_currentColor == Colors.pink) {
        _currentColor = Colors.purple;
      } else {
        _currentColor = Colors.pink;
      }
    });
  }
}
