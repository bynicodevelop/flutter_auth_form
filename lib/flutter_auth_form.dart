import 'package:flutter/material.dart';
import 'package:flutter_auth_form/models/User.dart';
import 'package:flutter_inputs/MainButton.dart';
import 'package:flutter_inputs/forms/inputs/EmailInput.dart';
import 'package:flutter_inputs/forms/inputs/PasswordInput.dart';

class AuthForm extends StatefulWidget {
  final Function(UserModel) onPressed;

  final String title;
  final String emailLabel;
  final String passwordLabel;
  final String buttonLabel;

  AuthForm({
    Key key,
    @required this.title,
    @required this.emailLabel,
    @required this.passwordLabel,
    @required this.buttonLabel,
    @required this.onPressed,
  }) : super(key: key);

  @override
  _AuthFormState createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  GlobalKey<FormState> _keyForm = GlobalKey<FormState>();

  String _email;
  String _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _keyForm,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
            ),
            child: Text(
              widget.title.toUpperCase(),
              style: TextStyle(
                  fontSize: Theme.of(context).textTheme.headline2.fontSize,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: EmailInput(
              placeholder: widget.emailLabel,
              onChanged: (value) => _email = value,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: PasswordInput(
              placeholder: widget.passwordLabel,
              onChanged: (value) => _password = value,
              validator: (value) =>
                  value.isEmpty ? 'Enter a password (min: 6 chars)' : null,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
            ),
            child: MainButton(
              label: widget.buttonLabel,
              onPressed: () async {
                if (_keyForm.currentState.validate()) {
                  UserModel userModel = UserModel(
                    email: _email,
                    password: _password,
                  );

                  await widget.onPressed(userModel);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
