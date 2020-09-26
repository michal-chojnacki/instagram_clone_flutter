import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_credentials.dart';
import 'package:instagram_clone/features/authenticate/data/model/raw_token.dart';
import 'package:instagram_clone/features/content/data/model/raw_content.dart';
import 'package:instagram_clone/features/content/data/model/raw_contents.dart';
import 'package:instagram_clone/features/content/data/model/raw_image.dart';
import 'package:instagram_clone/features/content/data/model/raw_user.dart';
import 'package:instagram_clone/features/profile/data/model/raw_like_status.dart';
import 'package:instagram_clone/features/profile/data/model/raw_like_statuses.dart';
import 'package:instagram_clone/features/profile/data/model/raw_observing_status.dart';
import 'package:instagram_clone/features/profile/data/model/raw_users.dart';

part 'serializers.g.dart';

@SerializersFor([
  RawCredentials,
  RawImage,
  RawUser,
  RawContent,
  RawContents,
  RawToken,
  RawObservingStatus,
  RawUsers,
  RawLikeStatuses,
  RawLikeStatus
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
