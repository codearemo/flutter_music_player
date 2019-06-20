import 'package:flutter/material.dart';

class MusicSeek extends StatelessWidget {
  final double _seekHeight = 15.0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              height: _seekHeight * 0.5,
              color: Theme.of(context).primaryColor,
            ),
            Container(
              height: _seekHeight * 0.5,
              color: Colors.black,
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.5,
              height: 5.0,
              color: Colors.grey,
            ),
            Container(
              height: _seekHeight,
              width: _seekHeight,
              decoration: BoxDecoration(
                color: Colors.grey,
                shape: BoxShape.circle,
              ),
            )
          ],
        ),
      ],
    );
  }
}
