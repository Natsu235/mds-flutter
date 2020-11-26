import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Layout Demo'),
        elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          children: [
            // Image Header
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 260.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/lake.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            // Title & Description
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Text(
                          'Lorem ipsum',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Container(
                          height: 4.0,
                        ),
                        Text('Bla bla bla bla',
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 14.0,
                            )),
                      ],
                      crossAxisAlignment: CrossAxisAlignment.start,
                    ),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.star, color: Colors.red),
                        Text('41', style: TextStyle(fontSize: 15.0)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // Action Bar
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 32.0, vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _actionWidget(Icons.phone, 'CALL'),
                  _actionWidget(Icons.near_me, 'ROUTE'),
                  _actionWidget(Icons.share, 'SHARE'),
                ],
              ),
            ),
            // ListView with Content
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultrices a metus eget consectetur. Donec vitae dapibus velit. Duis sodales vehicula nunc nec lobortis. Fusce bibendum, mauris vitae facilisis vehicula, tellus ligula sollicitudin libero, eget dictum ligula ligula vitae ante. Nam eget odio feugiat, congue urna quis, pretium est. Aenean dictum libero eget lacus efficitur, eu pulvinar urna euismod. Nulla vitae mauris mi. Duis et tempus felis. Pellentesque luctus lacinia ultricies. Nullam pellentesque orci et augue dapibus, et dapibus urna vehicula. Phasellus semper accumsan ipsum, sed dignissim velit luctus at. Pellentesque ac dolor lobortis dui ullamcorper ultricies vitae quis orci. Etiam sed lectus ac libero venenatis laoreet. Cras et sapien a tortor lobortis semper in quis ligula. Pellentesque nulla tortor, pretium sit amet libero in, viverra gravida magna.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /*
   * Action Widget
   * Note : Le symbole '_' signifie que la méthode est privée
   */
  _actionWidget(IconData iconData, String text) {
    return Column(
      children: [
        Icon(
          iconData,
          color: Colors.blue,
          size: 31.0,
        ),
        Container(height: 8.0),
        Text(
          text,
          style: TextStyle(
            color: Colors.blue,
            fontSize: 12.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
