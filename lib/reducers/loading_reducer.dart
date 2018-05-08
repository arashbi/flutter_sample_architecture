import 'package:flutter_sample_architecture/actions/actions.dart';
import 'package:redux/redux.dart';

final loadingReducer = combineReducers<bool>([
  TypedReducer<bool, LoadingAction>(_setLoaded),
]);

bool _setLoaded(bool state, LoadingAction action) {
  return action.isLoading;
}

final counterReducer = combineReducers<int>([
  TypedReducer<int, IncrementAction>(_setCounter),
]);

int _setCounter(int state, IncrementAction action){
  return action.count;
}