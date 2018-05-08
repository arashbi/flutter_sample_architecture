import 'dart:async';

import 'package:flutter_sample_architecture/model/app_state.dart';
import 'package:redux/redux.dart';

class LoadingAction{
  final bool isLoading;

  LoadingAction(this.isLoading);
  @override
  String toString() {
    return 'LoadTodosAction';
  }
}

class IncrementAction{
  final int count;
  IncrementAction(this.count);

  @override
  String toString() {
    return 'Incrementing';
  }
}

Function increment() {
    return (Store<AppState> store) async {

      store.dispatch(new LoadingAction(true));
      await new Future.delayed(new Duration(milliseconds: 400), (){
        print("pretend we are doing somethong");
        store.dispatch(new IncrementAction(store.state.counter + 1));
        store.dispatch(new LoadingAction(false));

      });
    };
}