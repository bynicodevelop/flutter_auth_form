import 'package:flutter/material.dart';
import 'package:flutter_auth_form/flutter_auth_form.dart';
import 'package:flutter_auth_form/models/User.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  bottom: 100.0,
                ),
                child: AuthForm(
                  title: 'Connexion',
                  buttonLabel: 'Connexion',
                  emailLabel: 'Enter your email',
                  passwordLabel: 'Enter your password',
                  onPressed: (UserModel userModel) async =>
                      print(userModel.toJson()),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
