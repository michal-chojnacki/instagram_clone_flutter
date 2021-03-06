import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

mixin BlocSideEffects<Event, State, SideEffect> on Bloc<Event, State> {
  final _sideEffectsStreamController = StreamController<SideEffect>();
  Stream<SideEffect> get sideEffects => _sideEffectsStreamController.stream;

  void addSideEffect(SideEffect sideEffect) {
    if (_sideEffectsStreamController.isClosed) return;
    _sideEffectsStreamController.add(sideEffect);
  }

  @override
  @mustCallSuper
  Future<void> close() async {
    await _sideEffectsStreamController.close();
    return super.close();
  }
}
