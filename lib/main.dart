import 'package:flutter/material.dart';
import 'package:flutter_sample_architecture/model/app_state.dart';
import 'package:flutter_sample_architecture/reducers/app_reducer.dart';
import 'package:flutter_sample_architecture/routes/router.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux_thunk/redux_thunk.dart';
void main() => runApp(new Receipts());

class Receipts extends StatelessWidget {
  final Store<AppState> store;
  // This widget is the root of your application.

  Receipts(): store = new Store<AppState>(
    appReducer,
    initialState: AppState.loading(),
    middleware: [thunkMiddleware],

  );
  @override
  Widget build(BuildContext context) {
  return StoreProvider (
    store: store,
    child: MaterialApp(
      title: "Test",
      onGenerateRoute : new Routes().generator)
  );
  }
}
