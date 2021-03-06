import 'package:flutter/material.dart';

import 'package:instagram_clone/core/widgets/primary_button.dart';

class LoginForm extends StatefulWidget {
  final Function onLogIn;
  final Function onRegister;
  final bool registerMode;
  final String initialLogin;
  final String initialPassword;
  final String initialConfirmPassword;

  LoginForm(
      {this.onLogIn,
      this.onRegister,
      this.registerMode,
      this.initialLogin,
      this.initialPassword,
      this.initialConfirmPassword});

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  String _login, _password;
  bool _registerMode;

  @override
  void initState() {
    setState(() {
      _registerMode = widget.registerMode;
    });
    _passwordController.text = widget.initialPassword;
    super.initState();
  }

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
              initialValue: widget.initialLogin,
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
              controller: _passwordController,
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
                initialValue: widget.initialConfirmPassword,
                decoration: InputDecoration(labelText: 'Repeat password'),
                validator: (value) {
                  if (_registerMode && value.isEmpty) {
                    return 'Please enter some text';
                  }
                  if (_registerMode && value != _passwordController.text) {
                    return 'Passwords need to match';
                  }
                  return null;
                },
                obscureText: true,
              ),
            if (!_registerMode)
              PrimaryButton(text: 'Log in', onPressed: _onLoginClick),
            PrimaryButton(
                text: 'Register',
                light: !_registerMode,
                onPressed: _onRegisterClick),
            if (_registerMode)
              PrimaryButton(
                  text: 'Back To Log in',
                  light: true,
                  onPressed: () {
                    setState(() {
                      _registerMode = false;
                    });
                  }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
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
