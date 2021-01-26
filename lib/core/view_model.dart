import 'dart:async';

import 'package:flutter/material.dart';

class ViewModel<State> extends ValueNotifier<State> {
  ViewModel(State initialState) : super(initialState);
}

mixin ViewModelSideEffects<State, SideEffect> on ViewModel<State> {
  final _sideEffectsStreamController = StreamController<SideEffect>();
  Stream<SideEffect> get sideEffects => _sideEffectsStreamController.stream;

  void addSideEffect(SideEffect sideEffect) {
    if (_sideEffectsStreamController.isClosed) return;
    _sideEffectsStreamController.add(sideEffect);
  }

  @override
  @mustCallSuper
  void dispose() async {
    await _sideEffectsStreamController.close();
    super.dispose();
  }
}
