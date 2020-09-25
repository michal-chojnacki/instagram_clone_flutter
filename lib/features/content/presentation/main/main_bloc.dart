import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/domain/verify_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/main/main_event.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

@lazySingleton
class MainBloc extends Bloc<MainEvent, dynamic> {
  final VerifyAuthorizationTokenUseCase _verifyAuthorizationTokenUseCase;
  final NavigationBloc _navigationBloc;
  GlobalKey<NavigatorState> get navigatorKey => _navigationBloc.navigatorKey;

  MainBloc(this._verifyAuthorizationTokenUseCase, this._navigationBloc)
      : super(0) {
    verifyAuthenticationState();
  }

  void verifyAuthenticationState() {
    add(MainEvent.verifyAuthenticationState());
  }

  void openLoginPage() {
    _navigationBloc.openLoginPage();
  }

  void openContentPage() {
    _navigationBloc.openMainUserPage();
  }

  void openSingleContentPage({@required PersonalizedContent content}) {
    _navigationBloc.openSingleContentPage(content: content);
  }

  @override
  Stream<dynamic> mapEventToState(MainEvent event) {
    return event.when(
        verifyAuthenticationState: () => _mapVerifyAuthenticationState());
  }

  Stream<dynamic> _mapVerifyAuthenticationState() async* {
    var verifyAuthorizationTokenUseCase = _verifyAuthorizationTokenUseCase();
    List<Future> futures = [
      Future.delayed(Duration(seconds: 2)),
      _verifyAuthorizationTokenUseCase()
    ];
    await Future.wait(futures);
    (await verifyAuthorizationTokenUseCase)
        .when(success: (_) => openContentPage(), error: (_) => openLoginPage());
  }
}
