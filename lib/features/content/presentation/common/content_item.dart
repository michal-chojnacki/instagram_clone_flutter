import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/profile/domain/get_likes_statuses_use_case.dart';
import 'package:timeago/timeago.dart' as timeago;

class ContentItem extends StatefulWidget {
  final PersonalizedContent personalizedContent;
  final Function showUser;
  final Function changeLikeStatus;

  ContentItem({@required this.personalizedContent, @required this.showUser, @required this.changeLikeStatus});

  @override
  _ContentItemState createState() => _ContentItemState();
}

class _ContentItemState extends State<ContentItem> {
  Content get _content => widget.personalizedContent.content;
  bool _liked = false;

  @override
  void initState() {
    super.initState();
    _liked = widget.personalizedContent.liked;
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              InkWell(
                onTap: () => widget.showUser(_content.owner),
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
              SizedBox(
                height: 2.0,
              ),
              Image.network(_content.image.url),
              Row(children: <Widget>[
                IconButton(
                  icon: Icon(_liked ? Icons.favorite : Icons.favorite_border), onPressed: () {
                    setState(() {
                      _toggleLikeStatus();
                    });
                },),
              ],),
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

  void _toggleLikeStatus() async {
    _liked = await widget.changeLikeStatus(_liked);
  }
}
