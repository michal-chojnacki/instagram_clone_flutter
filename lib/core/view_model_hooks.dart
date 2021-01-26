import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:instagram_clone/core/view_model.dart';

S useViewModel<V extends ViewModel<S>, S>(
  V Function() viewModelFactory,
) {
  final viewModel = useMemoized(() => viewModelFactory());
  useEffect(() => viewModel.dispose, [viewModel]);
  return useValueListenable(viewModel);
}

void useViewModelSideEffects<V extends ViewModelSideEffects<dynamic, E>, E>(
    V Function() viewModelFactory, Function onSideEffect(E)) {
  final viewModel = useMemoized(() => viewModelFactory());
  useEffect(() {
    final subscription = viewModel.sideEffects.listen((sideEffect) {
      onSideEffect(sideEffect);
    });
    return subscription.cancel;
  }, [viewModel]);
}
