import 'package:flutter/material.dart';
import 'package:flutter_sample_architecture/actions/actions.dart';
import 'package:flutter_sample_architecture/model/app_state.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';

class HomePage extends StatelessWidget {
  HomePage() : super();

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, _ViewModel>(
      converter: _ViewModel.fromStore,
      builder: (context, vm) {
        return b(context, vm);
      },
    );
  }

  Widget b(BuildContext context, _ViewModel vm) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return new Scaffold(
      appBar: new AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: new Text("Title"),
      ),
      body: new Center(
        child: new Stack(
          children: <Widget>[
            vm.loading ? new Container(
                decoration: new BoxDecoration(
                    color: Color.fromRGBO(220, 220, 220,
                        0.7) // Specifies the background color and the opacity
                    ),
                child: new Center(
                  child: new CircularProgressIndicator(),
                )) : null,
            new Center(
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'You have pushed the button this many times:',
                  ),
                  new Text(
                    "You clicked ${vm.counter} times",
                    style: Theme.of(context).textTheme.display1,
                  ),
                ],
              ),
            )
          ].where((l) => (l != null) ).toList(),
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: vm.onClick,
        tooltip: 'Increment',
        child: new Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class _ViewModel {
  final bool loading;
  final int counter;
  final dynamic onClick;
  _ViewModel({this.loading, this.counter, this.onClick});
  static _ViewModel fromStore(Store<AppState> store) {
    return new _ViewModel(
        loading: store.state.isLoading,
        counter: store.state.counter,
        onClick: () {
          print("clicked");
          store.dispatch(increment());
        });
  }
}
