import 'package:flutter/material.dart';
import 'package:continue_app/src/models/login_model.dart';

class PostsPage extends StatefulWidget {
  PostsPage(this.arguments, {Key key}) : super(key: key);

  final LoginModel arguments;

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
            Text(
              widget.arguments.email,
            ),
            Text(
              widget.arguments.password,
            ),
          ],
        ),
      ),
    );
  }
}
