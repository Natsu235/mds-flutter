import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  final Color statusColor;
  final String cardText;

  CardWidget(this.statusColor, this.cardText);

  @override
  _CardWidgetState createState() =>
      _CardWidgetState(this.statusColor, this.cardText);
}

class _CardWidgetState extends State<CardWidget> {
  Color _statusColor;
  String _cardText;

  _CardWidgetState(this._statusColor, this._cardText);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      height: 80,
      width: double.maxFinite,
      child: Card(
        elevation: 1,
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Row(
            children: [
              Container(
                height: 12,
                width: 12,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _statusColor,
                ),
              ),
              SizedBox(width: 20.0),
              Text(
                _cardText,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
