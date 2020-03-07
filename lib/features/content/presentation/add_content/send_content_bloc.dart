import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/features/content/domain/send_content_use_case.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_state.dart';
import 'package:instagram_clone/features/content/presentation/add_content/send_content_event.dart';

@injectable
class SendContentBloc extends Bloc<SendContentEvent, SendContentState> {
  final SendContentUseCase _sendContentUseCase;

  SendContentBloc(this._sendContentUseCase);

  void sendContent(String message, String imagePath) {
    add(SendContentEvent.sendContent(message: message, imagePath: imagePath));
  }

  @override
  SendContentState get initialState => SendContentState.loaded();

  @override
  Stream<SendContentState> mapEventToState(SendContentEvent event) {
    return event.when(sendContent: (event) => _mapSendContent(event));
  }

  Stream<SendContentState> _mapSendContent(SendContent event) async* {
    yield SendContentState.loadingStarted();
    var result = await _sendContentUseCase(event.message, event.imagePath);
    yield result.when(
        success: (_) => SendContentState.sent(),
        error: (result) => SendContentState.error());
  }
}
