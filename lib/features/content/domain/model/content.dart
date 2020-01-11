import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../model/image.dart';
import '../model/user.dart';

class Content extends Equatable {
  final String id;
  final Image image;
  final String description;
  final User owner;
  final int publicationTimestamp;

  Content({
    @required this.id,
    @required this.image,
    @required this.description,
    @required this.owner,
    @required this.publicationTimestamp,
  }) : super([id, image, description, owner, publicationTimestamp]);
}
