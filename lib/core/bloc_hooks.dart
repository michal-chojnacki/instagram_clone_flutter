import 'package:instagram_clone/core/bloc_with_side_effects.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

S useBlocState<B extends Bloc<dynamic, S>, S>(
  B Function() blocFactory,
) {
  final bloc = useMemoized(() => blocFactory());
  useEffect(() => bloc.close, [bloc]);
  final stream = useMemoized(() => bloc.skip(1), [bloc.state]);
  return useStream(stream, initialData: bloc.state).data;
}

void useBlocSideEffects<B extends BlocWithSideEffect<dynamic, dynamic, E>, E>(
    B Function() blocFactory, Function onSideEffect(E)) {
  final bloc = useMemoized(() => blocFactory());
  useEffect(() {
    final subscription = bloc.sideEffects.listen((sideEffect) {
      onSideEffect(sideEffect);
    });
    return subscription.cancel;
  }, [bloc]);
}
