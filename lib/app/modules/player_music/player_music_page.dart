import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'player_music_controller.dart';

class PlayerMusicPage extends StatefulWidget {
  final String title;
  const PlayerMusicPage({Key key, this.title = "PlayerMusic"})
      : super(key: key);

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
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}
