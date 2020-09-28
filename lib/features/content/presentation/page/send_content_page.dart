import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_bloc.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_state.dart';
import 'package:instagram_clone/features/content/presentation/page/main_user_page.dart';

class SendContentPage extends StatefulWidget {
  static Route route(String imagePath) {
    return MaterialPageRoute<void>(
        builder: (_) => SendContentPage(imagePath: imagePath));
  }

  final String imagePath;

  const SendContentPage({Key key, @required this.imagePath});

  @override
  _SendContentPageState createState() => _SendContentPageState();
}

class _SendContentPageState extends State<SendContentPage> {
  final _sendContentBloc = GetIt.I<SendContentBloc>();
  final _messageController = TextEditingController();

  @override
  void initState() {
    _sendContentBloc.sideEffects.listen((sideEffect) => sideEffect.when(
        openMainUserPage: () =>
            Navigator.of(context).pushReplacement(MainUserPage.route())));
    super.initState();
  }

  @override
  void dispose() {
    _messageController.dispose();
    _sendContentBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SendContentBloc, SendContentState>(
        cubit: _sendContentBloc,
        builder: (context, SendContentState state) {
          return Scaffold(
              appBar:
                  AppBar(title: Text('Share the Picture'), actions: <Widget>[
                InkWell(
                  child: Container(
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child:
                          Text('Share', style: TextStyle(color: Colors.white))),
                  onTap: () {
                    if (state.progressBarVisible) {
                      return;
                    }
                    _sendContentBloc.sendContent(
                        _messageController.text ?? '', widget.imagePath);
                  },
                ),
              ]),
              body: Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Image.file(File(widget.imagePath), width: 120),
                        Container(
                          child: Expanded(
                            child: TextField(
                              maxLines: 4,
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
                  ),
                  SizedBox(height: 16.0),
                  if (state.progressBarVisible)
                    Center(
                      child: CircularProgressIndicator(),
                    )
                ],
              ));
        });
  }
}
