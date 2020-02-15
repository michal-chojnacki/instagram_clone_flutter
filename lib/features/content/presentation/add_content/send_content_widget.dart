import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_bloc.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_state.dart';

class SendContentScreen extends StatefulWidget {
  final String imagePath;

  const SendContentScreen({Key key, this.imagePath});

  @override
  _SendContentScreenState createState() => _SendContentScreenState();
}

class _SendContentScreenState extends State<SendContentScreen> {
  final _sendContentBloc = GetIt.I<SendContentBloc>();
  String _message;

  @override
  void dispose() {
    _sendContentBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Display the Picture')),
        body: BlocBuilder(
            bloc: _sendContentBloc,
            builder: (context, SendContentState state) {
              var progressBarVisible = state.progressBarVisible;
              print("SendContentScreen: $progressBarVisible");
              return Column(
                children: <Widget>[
                  Image.file(File(widget.imagePath)),
                  TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter a search term'),
                    onSubmitted: (String value) {
                        _message = value;
                    },
                  ),
                  RaisedButton(
                    child: Text("Send"),
                    onPressed: () {
                      _sendContentBloc.sendContent(_message ?? "", widget.imagePath);
                    },
                  )
                ],
              );
            }));
  }
}
