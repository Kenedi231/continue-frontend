import 'package:flutter/material.dart';
import 'package:continue_app/src/material/routes.dart';
import 'package:continue_app/src/blocs/login_page.dart';
import 'package:continue_app/src/blocs/posts_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Continue?',
      theme: ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blueGrey,
          shape: RoundedRectangleBorder(),
          textTheme: ButtonTextTheme.primary,
        ),
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: LoginPageRoute,
      routes: {
        LoginPageRoute: (_) => LoginPage(),
        PostsPageRoute: (context) => PostsPage(ModalRoute.of(context).settings.arguments),
      },
    );
  }
}
