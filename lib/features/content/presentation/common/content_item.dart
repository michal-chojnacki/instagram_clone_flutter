import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:timeago/timeago.dart' as timeago;

class ContentItem extends StatelessWidget {
  final Content _content;
  final Function _showUser;

  ContentItem(this._content, this._showUser);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () => _showUser(_content.owner),
                child: Row(
                  children: <Widget>[
                    CircleAvatar(
                        backgroundImage: NetworkImage(
                          _content.owner.avatar.url,
                        ),
                      ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 2.0),
                    ),
                    Text(_content.owner.username,
                        style: new TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              Image.network(_content.image.url),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                        style: new TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: _content.owner.username,
                              style:
                                  new TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: ' '),
                          TextSpan(text: _content.description),
                        ]),
                  )),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  timeago.format(DateTime.fromMillisecondsSinceEpoch(
                      _content.publicationTimestamp)),
                  style: new TextStyle(
                    fontSize: 10.0,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
