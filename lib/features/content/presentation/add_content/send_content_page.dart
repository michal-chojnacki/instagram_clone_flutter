import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_bloc.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_state.dart';

class SendContentPage extends StatefulWidget {
  final String imagePath;

  const SendContentPage({Key key, this.imagePath});

  @override
  _SendContentPageState createState() => _SendContentPageState();
}

class _SendContentPageState extends State<SendContentPage> {
  final _sendContentBloc = GetIt.I<SendContentBloc>();
  final _messageController = TextEditingController();

  @override
  void dispose() {
    _messageController.dispose();
    _sendContentBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Display the Picture'), actions: <Widget>[
          InkWell(
            child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text("Share", style: TextStyle(color: Colors.white))),
            onTap: () {
              _sendContentBloc.sendContent(
                  _messageController.text ?? "", widget.imagePath);
            },
          ),
        ]),
        body: BlocBuilder<SendContentBloc, SendContentState>(
            cubit: _sendContentBloc,
            builder: (context, SendContentState state) {
              var progressBarVisible = state.progressBarVisible;
              print("SendContentPage: $progressBarVisible");
              return IntrinsicHeight(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Image.file(File(widget.imagePath), width: 100),
                    Container(
                      child: Expanded(
                        child: TextField(
                          expands: true,
                          maxLines: null,
                          textAlignVertical: TextAlignVertical.top,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Description'),
                          controller: _messageController,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }));
  }
}
