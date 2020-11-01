import 'package:bloc_test/bloc_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/domain/model/content.dart';
import 'package:instagram_clone/features/content/domain/model/image.dart'
    as image_model;
import 'package:instagram_clone/features/content/domain/model/user.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_bloc.dart';
import 'package:instagram_clone/features/content/presentation/item/content_item_state.dart';
import 'package:instagram_clone/features/content/presentation/widget/content_item_widget.dart';
import 'package:instagram_clone/features/profile/presentation/page/user_profile_page.dart';
import 'package:mockito/mockito.dart';

class MockContentItemBloc extends MockBloc<ContentItemState>
    implements ContentItemBloc {}

class MockNavigatorObserver extends Mock implements NavigatorObserver {}

void main() {
  group('ContentItemWidget', () {
    MockContentItemBloc mockContentItemBloc;
    final fakePersonalizedContent = PersonalizedContent(
        content: Content(
            id: 1,
            likesCount: 2,
            image: image_model.Image(url: ''),
            description: 'test description',
            owner: User(
                id: 1,
                bio: 'bio',
                fullname: 'elo name',
                username: 'elo',
                posts: 1,
                followees: 2,
                followers: 3,
                avatar: image_model.Image(url: '')),
            publicationTimestamp: DateTime.now().millisecondsSinceEpoch),
        liked: true);

    setUp(() {
      mockContentItemBloc = MockContentItemBloc();
      GetIt.instance
        ..reset()
        ..registerFactory<ContentItemBloc>(() => mockContentItemBloc);
    });

    testWidgets(
        'given ContentItemBloc emitting ContentItemState.initial when widget pumped then owner username is displayed',
        (WidgetTester tester) async {
      // given
      when(mockContentItemBloc.state).thenAnswer(
        (_) => ContentItemState.initial(
            fakePersonalizedContent.content, fakePersonalizedContent.liked),
      );

      // when
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
              child: ContentItemWidget(
                  personalizedContent: fakePersonalizedContent)),
        ),
      ));

      // then
      expect(find.text(fakePersonalizedContent.content.owner.username),
          findsOneWidget);
    });

    testWidgets(
        'given ContentItemBloc emitting ContentItemState.initial when widget pumped then likes count is displayed and favourite icon is displayed',
        (WidgetTester tester) async {
      // given
      when(mockContentItemBloc.state).thenAnswer(
        (_) => ContentItemState.initial(
            fakePersonalizedContent.content, fakePersonalizedContent.liked),
      );

      // when
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
              child: ContentItemWidget(
                  personalizedContent: fakePersonalizedContent)),
        ),
      ));

      // then
      expect(find.text('2 likes'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsOneWidget);
    });

    testWidgets(
        'given ContentItemBloc emitting ContentItemState.initial when widget pumped and favIconButton is pressend then changeLikeStatus is called',
        (WidgetTester tester) async {
      // given
      when(mockContentItemBloc.state).thenAnswer(
        (_) => ContentItemState.initial(
            fakePersonalizedContent.content, fakePersonalizedContent.liked),
      );

      // when
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
              child: ContentItemWidget(
                  personalizedContent: fakePersonalizedContent)),
        ),
      ));
      await tester.pumpAndSettle();
      final favIconButton = find
          .widgetWithIcon(IconButton, Icons.favorite)
          .evaluate()
          .first
          .widget as IconButton;
      favIconButton.onPressed();

      // then
      verify(mockContentItemBloc.changeLikeStatus(
          contentId: fakePersonalizedContent.content.id,
          liked: !fakePersonalizedContent.liked));
    });

    testWidgets(
        'given ContentItemBloc emitting ContentItemState.setLikeStatus when widget pumped then likes count is displayed and favourite icon border is displayed',
        (WidgetTester tester) async {
      // given
      final initialState = ContentItemState.initial(
          fakePersonalizedContent.content, fakePersonalizedContent.liked);
      when(mockContentItemBloc.state).thenAnswer(
        (_) => ContentItemState.setLikeStatus(initialState, false),
      );

      // when
      await tester.pumpWidget(MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
              child: ContentItemWidget(
                  personalizedContent: fakePersonalizedContent)),
        ),
      ));

      // then
      expect(find.text('1 likes'), findsOneWidget);
      expect(find.byIcon(Icons.favorite_border), findsOneWidget);
    });

    testWidgets(
        'given ContentItemBloc emitting ContentItemState.initial when widget pumped and username text is tapped then UserProfilePage is pushed to navigator',
        (WidgetTester tester) async {
      // given
      final mockObserver = MockNavigatorObserver();
      when(mockContentItemBloc.state).thenAnswer(
        (_) => ContentItemState.initial(
            fakePersonalizedContent.content, fakePersonalizedContent.liked),
      );

      // when
      await tester.pumpWidget(MaterialApp(
        navigatorObservers: [mockObserver],
        home: Scaffold(
          body: SingleChildScrollView(
              child: ContentItemWidget(
                  personalizedContent: fakePersonalizedContent)),
        ),
      ));
      await tester.pumpAndSettle();
      await tester
          .tap(find.text(fakePersonalizedContent.content.owner.username));

      // then
      final newRoute = verify(mockObserver.didPush(captureAny, any))
          .captured
          .last as MaterialPageRoute;
      expect(newRoute.builder.call(null) is UserProfilePage, true);
    });
  });
}
