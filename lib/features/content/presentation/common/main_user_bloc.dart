import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class MainUserBloc extends Cubit<int> {
  MainUserBloc() : super(0);

  void showPage(int index) {
    emit(index);
  }
}
