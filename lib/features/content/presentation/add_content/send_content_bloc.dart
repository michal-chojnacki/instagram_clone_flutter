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
    return event.when(sendContent: (event) => _mapSendContent(event));
  }

  Stream<SendContentState> _mapSendContent(SendContent event) =>
      Stream.fromFuture(_sendContentUseCase(event.message, event.imagePath))
          .flatMap((result) => result.when(
              success: (_) {
                _navigationBloc.openMainUserPage();
                return Stream<SendContentState>.empty();
              },
              error: (_) => Stream.value(SendContentState.error())))
          .startWith(SendContentState.loadingStarted());
}
