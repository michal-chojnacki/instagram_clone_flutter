import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_event.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_state.dart';
import 'package:instagram_clone/features/profile/domain/change_like_use_case.dart';

@injectable
class ContentItemBloc extends Bloc<ContentItemEvent, ContentItemState> {
  final ChangeLikeUseCase _changeLikeUseCase;

  ContentItemBloc(this._changeLikeUseCase,
      @factoryParam PersonalizedContent personalizedContent)
      : super(ContentItemState.initial(
            personalizedContent.content, personalizedContent.liked));

  void changeLikeStatus({@required bool liked, @required int contentId}) {
    add(ContentItemEvent.changeLikeStatus(liked: liked, contentId: contentId));
  }

  @override
  Stream<ContentItemState> mapEventToState(ContentItemEvent event) {
    return event.when(
        changeLikeStatus: (bool liked, int contentId) =>
            _mapChangeLikeStatus(liked, contentId));
  }

  Stream<ContentItemState> _mapChangeLikeStatus(
      bool liked, int contentId) async* {
    yield (await _changeLikeUseCase(contentId, liked)).when(
        success: (_) => ContentItemState.setLikeStatus(state, liked),
        error: (_) => ContentItemState.setLikeStatus(state, !liked));
  }
}
