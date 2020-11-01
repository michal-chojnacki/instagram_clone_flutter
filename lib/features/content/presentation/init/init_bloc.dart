import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/authenticate/domain/verify_authorization_token_use_case.dart';
import 'package:instagram_clone/features/content/presentation/init/init_event.dart';
import 'package:instagram_clone/features/content/presentation/init/init_state.dart';

@injectable
class InitBloc extends Bloc<InitEvent, InitState> {
  final VerifyAuthorizationTokenUseCase _verifyAuthorizationTokenUseCase;

  InitBloc(this._verifyAuthorizationTokenUseCase) : super(InitState.idle()) {
    verifyAuthenticationState();
  }

  void verifyAuthenticationState() {
    add(InitEvent.verifyAuthenticationState());
  }

  @override
  Stream<InitState> mapEventToState(InitEvent event) {
    return event.when(
        verifyAuthenticationState: () => _mapVerifyAuthenticationState());
  }

  Stream<InitState> _mapVerifyAuthenticationState() async* {
    final verifyAuthorizationTokenUseCase = _verifyAuthorizationTokenUseCase();
    final futures = [
      Future.delayed(Duration(seconds: 2)),
      _verifyAuthorizationTokenUseCase()
    ];
    await Future.wait(futures);
    yield (await verifyAuthorizationTokenUseCase).when(
        success: (_) => InitState.openContentPage(),
        error: (_) => InitState.openLoginPage());
  }
}
