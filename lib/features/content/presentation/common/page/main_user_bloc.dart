import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

@injectable
class MainUserBloc extends Cubit<int> {
  final NavigationBloc _navigationBloc;

  MainUserBloc(this._navigationBloc) : super(0);

  void showPage(int index) {
    if (index == 2) {
      _navigationBloc.openPickImagePage(
          ratio: 1.0,
          circleShaped: false,
          onImagePicked: (imagePath) {
            _navigationBloc.openSendContentScreen(imagePath);
          });
    } else {
      emit(index);
    }
  }
}
