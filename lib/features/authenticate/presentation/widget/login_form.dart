import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  final Function _onLogIn;

  LoginForm(this._onLogIn);

  @override
  _LoginFormState createState() => _LoginFormState(_onLogIn);
}

class _LoginFormState extends State<LoginForm> {
  Function _onLogIn;
  final _formKey = GlobalKey<FormState>();
  String _login, _password;

  _LoginFormState(this._onLogIn);

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
                    RaisedButton(
                        child: Text('Log in'),
                        onPressed: signIn
                    ),
                  ],
                ),
              ),
            );
  }

    Future<void> signIn() async {
    final formState = _formKey.currentState;
    if(formState.validate()) {
      formState.save();
      _onLogIn(_login, _password);
    }
  }
}