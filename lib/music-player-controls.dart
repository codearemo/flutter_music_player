import 'package:flutter/material.dart';

class NowPlayingControls extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.35,
      color: Colors.black,
      child: Material(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Song Title',
                  style: TextStyle(color: Colors.white, fontSize: 25.0),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Artiste Name',
                  style: TextStyle(color: Colors.white, fontSize: 15.0),
                ),
              ],
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: Icon(
                      Icons.skip_previous,
                      color: Theme.of(context).primaryColor,
                      size: 35.0,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  child: IconButton(
                    icon: Icon(
                      Icons.play_arrow,
                      color: Theme.of(context).primaryColor,
                      size: 80.0,
                    ),
                    onPressed: () {},
                  ),
                ),
                Container(
                  width: 60,
                  height: 60,
                  child: IconButton(
                    icon: Icon(
                      Icons.skip_next,
                      color: Theme.of(context).primaryColor,
                      size: 35.0,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
