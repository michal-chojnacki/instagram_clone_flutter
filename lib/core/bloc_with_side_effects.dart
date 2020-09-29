import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BlocWithSideEffect<Event, State, SideEffect>
    extends Bloc<Event, State> {
  BlocWithSideEffect(State initialState) : super(initialState);

  final _sideEffectsStreamController = StreamController<SideEffect>();
  Stream<SideEffect> get sideEffects => _sideEffectsStreamController.stream;

  void addSideEffect(SideEffect sideEffect) {
    if (_sideEffectsStreamController.isClosed) return;
    _sideEffectsStreamController.add(sideEffect);
  }

  @override
  Future<void> close() async {
    await _sideEffectsStreamController.close();
    return super.close();
  }
}
