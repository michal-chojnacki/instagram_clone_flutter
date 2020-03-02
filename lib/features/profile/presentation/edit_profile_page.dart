import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class EditProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        appBar: AppBar(
            leading: new IconButton(
              icon: new Icon(Icons.close),
              onPressed: () => Navigator.of(context).pop(),
            ),
          title: const Text('Edit profile'),
          actions: <Widget>[
            IconButton(icon: Icon(Icons.check),
            onPressed: () => {
              Navigator.of(context).pop()
            },)
          ],
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
            child: Column(children: <Widget>[
              InkWell(
                onTap: getImage,
                child: Column(children: <Widget>[
                  CircleAvatar(
                    radius: 64.0,
                    backgroundColor: Colors.black,
                    backgroundImage: NetworkImage(
                      "https://upload.wikimedia.org/wikipedia/commons/1/16/Zenon_Martyniuk_%28member_of_Polish_band_Akcent%29_2018_.jpg",
                    ),
                  ),
                  Text('Zmień zdjęcie profilowe'),
                ],),
              ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Name'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Username'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Bio'),
          ),
        ])));
  }

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    print('onSelectAvatar : $image');
  }
}
