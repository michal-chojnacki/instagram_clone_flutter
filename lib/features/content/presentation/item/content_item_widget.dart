import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/core/widgets/animated_fav_icon.dart';
import 'package:instagram_clone/core/widgets/network_image_with_fallback.dart';
import 'package:instagram_clone/core/widgets/rounded_square_image.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_bloc.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_state.dart';
import 'package:timeago/timeago.dart' as timeago;

class ContentItemWidget extends StatefulWidget {
  final PersonalizedContent personalizedContent;

  ContentItemWidget({@required this.personalizedContent});

  @override
  _ContentItemWidgetState createState() => _ContentItemWidgetState();
}

class _ContentItemWidgetState extends State<ContentItemWidget> {
  ContentItemBloc _contentItemBloc;

  @override
  void initState() {
    super.initState();
    _contentItemBloc = GetIt.instance.get(param1: widget.personalizedContent);
  }

  @override
  void dispose() {
    _contentItemBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocBuilder<ContentItemBloc, ContentItemState>(
            cubit: _contentItemBloc,
            builder: (context, ContentItemState state) => Column(
              children: <Widget>[
                InkWell(
                  onTap: () =>
                      _contentItemBloc.showUser(user: state.content.owner),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImageWithFallback(
                          state.content.owner.avatar.url,
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 2.0),
                      ),
                      Text(state.content.owner.username,
                          style: new TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                RoundedSquareImage.network(state.content.image.url),
                Row(
                  children: <Widget>[
                    IconButton(
                      icon: AnimatedFavIcon(
                        state: () => state.liked,
                      ),
                      onPressed: () {
                        _contentItemBloc.changeLikeStatus(
                            liked: !state.liked, contentId: state.content.id);
                      },
                    ),
                    Text('${state.content.likesCount} likes'),
                  ],
                ),
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
                                text: state.content.owner.username,
                                style:
                                    new TextStyle(fontWeight: FontWeight.bold)),
                            TextSpan(text: ' '),
                            TextSpan(text: state.content.description),
                          ]),
                    )),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    timeago.format(DateTime.fromMillisecondsSinceEpoch(
                        state.content.publicationTimestamp)),
                    style: new TextStyle(
                      fontSize: 10.0,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
