import 'package:flutter/material.dart';

class CounterButton extends StatefulWidget {
  final Function onPressed;
  CounterButton(this.onPressed);

  @override
  _CounterButtonState createState() => _CounterButtonState();
}

class _CounterButtonState extends State<CounterButton> {
  // Valeurs qui changent dans le temps
  Color _backgroundColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        height: 56,
        width: 56,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _backgroundColor,
        ),
        child: Center(
          child: Icon(Icons.add, color: Colors.white),
        ),
      ),
      onTapDown: (detail) {
        _changeBackgroundColor(Colors.blue.withAlpha(200));
      },
      onTapUp: (detail) {
        _changeBackgroundColor(Colors.blue);
        widget.onPressed();
      },
      onTapCancel: () {
        _changeBackgroundColor(Colors.blue);
      },
    );
  }

  _changeBackgroundColor(Color _backgroundColor) {
    setState(() {
      this._backgroundColor = _backgroundColor;
    });
  }
}
