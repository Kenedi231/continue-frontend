import 'package:flutter/material.dart';
import 'package:continue_app/src/material/routes.dart';
import 'package:continue_app/src/models/login_model.dart';
import 'package:flushbar/flushbar.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPage createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login page'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
              color: Colors.black12, borderRadius: BorderRadius.circular(20.0)),
          padding: EdgeInsets.all(20.0),
          alignment: Alignment.center,
          height: 285,
          width: 300,
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 5.0),
                  child: new TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: const InputDecoration(
                      labelText: 'Email',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      RegExp exp = new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$");
                      if (!exp.hasMatch(value)) {
                        return 'Invalid email';
                      }
                      return null;
                    },
                  )
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: new TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Empty password';
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0),
                  child: new ButtonTheme(
                    minWidth: 260,
                    height: 45,
                    textTheme: ButtonTextTheme.primary,
                    child: RaisedButton(
                      child: Text('Log in'),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          Flushbar(
                            message: "Logged",
                            margin: EdgeInsets.all(8),
                            borderRadius: 8,
                            duration: Duration(seconds: 4),
                            icon: Icon(
                              Icons.info_outline,
                              size: 28.0,
                              color: Colors.blueGrey[300],
                            ),
                            isDismissible: true,
                            flushbarPosition: FlushbarPosition.BOTTOM,
                            dismissDirection: FlushbarDismissDirection.HORIZONTAL,
                            boxShadows: [BoxShadow(color: Colors.black, offset: Offset(0.0, 2.0), blurRadius: 3.0,)],
                          )..show(context);
                          Navigator.pushNamed(context, PostsPageRoute,
                              arguments:
                              LoginModel(emailController.text, passwordController.text));
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
