import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final Function onLogIn;
  final Function onRegister;

  LoginForm({this.onLogIn, this.onRegister});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String _login, _password, _repeatPassword;
  bool _registerMode = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Login'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (input) => _login = input,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Password'),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onSaved: (input) => _password = input,
              obscureText: true,
            ),
            if (_registerMode)
              TextFormField(
                decoration: InputDecoration(labelText: 'Repeat password'),
                validator: (value) {
                  if (_registerMode && value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
                onSaved: (input) => _repeatPassword = input,
                obscureText: true,
              ),
            if (!_registerMode)
            RaisedButton(child: Text('Log in'), onPressed: _onLoginClick),
            RaisedButton(child: Text('Register'), onPressed: _onRegisterClick),
          ],
        ),
      ),
    );
  }

  Future<void> _onLoginClick() async {
    final formState = _formKey.currentState;
    if (formState.validate()) {
      formState.save();
      widget.onLogIn(_login, _password);
    }
  }

  Future<void> _onRegisterClick() async {
    if (_registerMode) {
      final formState = _formKey.currentState;
      if (formState.validate()) {
        formState.save();
        widget.onRegister(_login, _password);
      }
    } else {
      setState(() {
        _registerMode = true;
      });
    }
  }
}
