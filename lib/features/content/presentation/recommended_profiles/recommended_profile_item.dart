import 'package:flutter/material.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';

class RecommendedProfileItem extends StatelessWidget {
  final User user;
  final Function onOpenProfileClick;
  final Function onObserveClick;

  RecommendedProfileItem(
      {@required this.user,
      @required this.onOpenProfileClick,
      @required this.onObserveClick});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
        child: Row(children: <Widget>[
          CircleAvatar(
            radius: 24.0,
            backgroundImage: NetworkImage(
              user.avatar.url,
            ),
          ),
          SizedBox(width: 16.0,),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(user.username, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                if(user.fullname != null && user.fullname.isNotEmpty) Text(user.fullname, style: TextStyle(fontSize: 12.0),),
              ],
            ),
          ),
          SizedBox(width: 16.0,),
          RaisedButton(
            color: Colors.blue,
            child: Text(
              'Observe',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () => onObserveClick(user),
          )
        ]),
      ),
      onTap: () => onOpenProfileClick(user),
    );
  }
}
