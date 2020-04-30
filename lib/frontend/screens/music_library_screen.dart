import 'package:flutter/material.dart';

class MusicLibrary extends StatelessWidget {
  static const routeName = '/home_screen';
  static const title = 'home screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton.icon(
            icon: Icon(Icons.person_add),
            label: Text('Artists'),
            // TODO: IMPLEMENT DATA
            onPressed: () {},
          ),
          RaisedButton.icon(
            icon: Icon(Icons.album),
            label: Text('Albums'),
            // TODO: IMPLEMENT DATA
            onPressed: () {},
          ),
          RaisedButton.icon(
            icon: Icon(Icons.music_note),
            label: Text('Songs'),
            // TODO: IMPLEMENT DATA
            onPressed: () {},
          ),
        ],
      ),
      // drawer: MainDrawer(),
    );
  }
}
