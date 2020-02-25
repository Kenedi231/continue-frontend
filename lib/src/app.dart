import 'package:flutter/material.dart';
import 'package:continue_app/src/blocs/login_page.dart';
import 'package:continue_app/src/blocs/posts_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Continue?',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/posts': (context) => PostsPage(),
      },
    );
  }
}
