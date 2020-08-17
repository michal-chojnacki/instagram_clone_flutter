import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/domain/load_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/main/main_event.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

@lazySingleton
class MainBloc extends Bloc<MainEvent, dynamic> {
  final LoadAuthorizationTokenUseCase _loadAuthorizationToken;
  final NavigationBloc _navigationBloc;
  GlobalKey<NavigatorState> get navigatorKey => _navigationBloc.navigatorKey;

  MainBloc(this._loadAuthorizationToken, this._navigationBloc) : super(0) {
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
        verifyAuthenticationState: (_) => _mapVerifyAuthenticationState());
  }

  Stream<dynamic> _mapVerifyAuthenticationState() async* {
    (await _loadAuthorizationToken()).when(
        success: (result) {
          (result.data != null) ? openContentPage() : openLoginPage();
        },
        error: (_) => openLoginPage());
  }
}
