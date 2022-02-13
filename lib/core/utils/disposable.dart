import 'dart:async';

import 'package:bloc/bloc.dart';

mixin Disposable<State> on BlocBase<State> {
  final List<StreamSubscription> _subscriptions = [];

  @override
  Future<void> close() {
    _unsubscribeAll();
    return super.close();
  }

  void _unsubscribeAll() {
    for (final StreamSubscription i in _subscriptions) {
      i.cancel();
    }
    _subscriptions.clear();
  }

  void _subscribe(StreamSubscription subscription) {
    _subscriptions.add(subscription);
  }
}

extension StreamsSubs<T> on StreamSubscription<T> {
  StreamSubscription<T> subscribe(Disposable disposable) {
    disposable._subscribe(this);
    return this;
  }
}
