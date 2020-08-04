import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:super_enum/super_enum.dart';

part "navigation_event.g.dart";

@superEnum
enum _NavigationEvent {
  @object
  PopPage,
  @object
  OpenMainUserPage,
  @object
  OpenLoginPage,
  @object
  OpenEditUserPage,
  @Data(fields: [
    DataField<String>('imagePath'),
  ])
  OpenSendContentPage,
  @Data(fields: [
    DataField<Function>('onPickedImage'),
    DataField<double>('ratio'),
    DataField<bool>('circleShaped'),
  ])
  OpenPickImagePage,
  @Data(fields: [
    DataField<User>('user'),
  ])
  OpenUserProfilePage,
  @Data(fields: [
    DataField<PersonalizedContent>('content'),
  ])
  OpenSingleContentPage,
  @Data(fields: [
    DataField<bool>('editable'),
    DataField<String>('path'),
    DataField<Function>('onPickedImage'),
    DataField<double>('ratio'),
    DataField<bool>('circleShaped'),
  ])
  OpenAdjustImagePage,
}
