import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:music_player/music-player-controls.dart';
import 'package:music_player/music-seek.dart';

class NowPlaying extends StatefulWidget {
  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  @override
  Widget build(BuildContext context) {
    // Setting the color of the networkbar
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.light.copyWith(
        statusBarColor: Theme.of(context).primaryColor,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Color(0X55000000),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(
          'Now Playing',
          style: TextStyle(
            color: Color(0X88000000),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Icon(
              Icons.more_vert,
              color: Color(0X55000000),
            ),
          ),
        ],
      ),
      body: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            Spacer(),
            ClipOval(
              clipper: AlbumArtClipper(),
              child: Container(
                width: 250.0,
                height: 250.0,
                color: Colors.black,
              ),
            ),
            Spacer(
              flex: 2,
            ),
            MusicSeek(),
            NowPlayingControls(),
          ],
        ),
      ),
    );
  }
}

class AlbumArtClipper extends CustomClipper<Rect> {
  @override
  getClip(Size size) {
    return Rect.fromCircle(
      center: Offset(size.width * 0.5, size.height * 0.5),
      radius: min(size.width, size.height) * 0.5,
    );
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
