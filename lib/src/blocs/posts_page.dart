import 'package:flutter/material.dart';

class PostsPage extends StatefulWidget {
  PostsPage({Key key}) : super(key: key);

  @override
  _PostsPage createState() => _PostsPage();
}

class _PostsPage extends State<PostsPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Posts page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'This posts page',
            ),
          ],
        ),
      ),
    );
  }
}
