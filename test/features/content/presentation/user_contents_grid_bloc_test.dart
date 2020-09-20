import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:instagram_clone/core/result.dart';
import 'package:instagram_clone/features/content/domain/get_contents_for_user_use_case.dart';
import 'package:instagram_clone/features/content/domain/get_user_contents_use_case.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_bloc.dart';
import 'package:instagram_clone/features/content/presentation/common/user_contents_grid_state.dart';
import 'package:mockito/mockito.dart';

class MockGetContentsForUserUseCase extends Mock
    implements GetContentsForUserUseCase {}

class MockGetUserContentsUseCase extends Mock
    implements GetUserContentsUseCase {}

class MockPersonalizedContent extends Mock implements PersonalizedContent {}

void main() {
  group('UserContentsGridBloc tests:', () {
    var getContentsForUserUseCase = MockGetContentsForUserUseCase();
    var getUserContentsUseCase = MockGetUserContentsUseCase();
    var personalizedContentList = [
      MockPersonalizedContent(),
      MockPersonalizedContent()
    ];

    blocTest(
        'given getUserContentsUseCase returning empty list when fetchCurrentUserContent then loading and then success with empty list is returned',
        build: () {
          when(getUserContentsUseCase.call(0))
              .thenAnswer((_) async => Result.success(data: []));
          return UserContentsGridBloc(
              getContentsForUserUseCase, getUserContentsUseCase);
        },
        act: (bloc) => bloc.fetchCurrentUserContent(),
        expect: [
          UserContentsGridState.loading(),
          UserContentsGridState.success([])
        ]);

    blocTest(
        'given getUserContentsUseCase returning error when fetchCurrentUserContent then loading and then success with empty list is returned',
        build: () {
          when(getUserContentsUseCase.call(0)).thenAnswer((_) async =>
              Result.error(exception: Exception('Fake exception')));
          return UserContentsGridBloc(
              getContentsForUserUseCase, getUserContentsUseCase);
        },
        act: (bloc) => bloc.fetchCurrentUserContent(),
        expect: [
          UserContentsGridState.loading(),
          UserContentsGridState.success([])
        ]);

    blocTest(
        'given getUserContentsUseCase returning not empty list when fetchCurrentUserContent then loading and then success with the same list is returned',
        build: () {
          when(getUserContentsUseCase.call(0)).thenAnswer(
              (_) async => Result.success(data: personalizedContentList));
          return UserContentsGridBloc(
              getContentsForUserUseCase, getUserContentsUseCase);
        },
        act: (bloc) => bloc.fetchCurrentUserContent(),
        expect: [
          UserContentsGridState.loading(),
          UserContentsGridState.success(personalizedContentList)
        ]);
  });
}
