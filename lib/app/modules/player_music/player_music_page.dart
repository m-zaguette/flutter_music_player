// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'player_music_controller.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayerMusicPage extends StatefulWidget {
  final String url;
  const PlayerMusicPage({Key key, this.url}) : super(key: key);

  @override
  _PlayerMusicPageState createState() => _PlayerMusicPageState();
}

class _PlayerMusicPageState
    extends ModularState<PlayerMusicPage, PlayerMusicController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('${widget.url}'),
      ),
      backgroundColor: Colors.black,
      body: Column(
        children: <Widget>[buildImageHeader(), buildNameMusic()],
      ),
    );
  }

  Container buildImageHeader() {
    return Container(
        margin: EdgeInsets.only(
          left: (MediaQuery.of(this.context).size.width / 10),
          right: (MediaQuery.of(this.context).size.width / 10),
          top: (MediaQuery.of(this.context).size.width / 8),
          bottom: (MediaQuery.of(this.context).size.width / 8),
        ),
        child: Container(
            width: MediaQuery.of(this.context).size.width,
            height: 350,
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(
                    image: NetworkImage(widget.url), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(2),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey[700],
                      blurRadius:
                          (MediaQuery.of(this.context).size.width / 200),
                      offset: Offset(
                          (MediaQuery.of(this.context).size.width / 250),
                          (MediaQuery.of(this.context).size.width / 250)))
                ])));
  }

  buildNameMusic() {
    return Column(
      children: [
        Container(
          child: Text(
            'Ninguém sabe o nome dessa música',
            style: GoogleFonts.notoSans(fontSize: 15),
          ),
        ),
      ],
    );
  }
}
