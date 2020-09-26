import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/send_content_use_case.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_state.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_event.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';
import 'package:rxdart/rxdart.dart';

@injectable
class SendContentBloc extends Bloc<SendContentEvent, SendContentState> {
  final NavigationBloc _navigationBloc;
  final SendContentUseCase _sendContentUseCase;

  SendContentBloc(this._navigationBloc, this._sendContentUseCase)
      : super(SendContentState.loaded());

  void sendContent(String message, String imagePath) {
    add(SendContentEvent.sendContent(message: message, imagePath: imagePath));
  }

  @override
  Stream<SendContentState> mapEventToState(SendContentEvent event) {
    return event.when(
        sendContent: (String message, String imagePath) =>
            _mapSendContent(message, imagePath));
  }

  Stream<SendContentState> _mapSendContent(String message, String imagePath) =>
      Stream.fromFuture(_sendContentUseCase(message, imagePath))
          .flatMap((result) => result.when(
              success: (_) {
                _navigationBloc.openMainUserPage();
                return Stream<SendContentState>.empty();
              },
              error: (_) => Stream.value(SendContentState.error())))
          .startWith(SendContentState.loadingStarted());
}
