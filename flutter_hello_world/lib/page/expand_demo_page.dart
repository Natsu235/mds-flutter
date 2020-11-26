import 'package:flutter/material.dart';

class ExpandPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Extended Demo')),
        body: Column(children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.purpleAccent.withOpacity(0.3),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              color: Colors.orangeAccent.withOpacity(0.3),
              child: Column(
                children: [
                  Spacer(),
                  Expanded(
                    flex: 2,
                    child: Row(
                      children: [
                        Spacer(),
                        Expanded(
                            flex: 2,
                            child: Container(
                              color: Colors.red,
                            )),
                        Spacer(),
                      ],
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.yellowAccent.withOpacity(0.3),
            ),
          ),
        ]));
  }
}
