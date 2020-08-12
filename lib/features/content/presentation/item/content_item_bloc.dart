import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_event.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_state.dart';
import 'package:instagram_clone/features/profile/domain/change_like_use_case.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

@injectable
class ContentItemBloc extends Bloc<ContentItemEvent, ContentItemState> {
  final NavigationBloc _navigationBloc;
  final ChangeLikeUseCase _changeLikeUseCase;

  ContentItemBloc(this._navigationBloc, this._changeLikeUseCase,
      @factoryParam PersonalizedContent personalizedContent)
      : super(ContentItemState.initial(
            personalizedContent.content, personalizedContent.liked));

  void changeLikeStatus({@required bool liked, @required int contentId}) {
    add(ContentItemEvent.changeLikeStatus(liked: liked, contentId: contentId));
  }

  void showUser({@required User user}) {
    _navigationBloc.openUserProfilePage(user: user);
  }

  @override
  Stream<ContentItemState> mapEventToState(ContentItemEvent event) {
    return event.when(changeLikeStatus: (event) => _mapChangeLikeStatus(event));
  }

  Stream<ContentItemState> _mapChangeLikeStatus(ChangeLikeStatus event) async* {
    yield (await _changeLikeUseCase(event.contentId, event.liked)).when(
        success: (result) => ContentItemState.setLikeStatus(state, event.liked),
        error: (result) => ContentItemState.setLikeStatus(state, !event.liked));
  }
}
