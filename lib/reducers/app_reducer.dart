import 'package:flutter_sample_architecture/model/app_state.dart';
import 'package:flutter_sample_architecture/reducers/loading_reducer.dart';


// We create the State reducer by combining many smaller reducers into one!
AppState appReducer(AppState state, action) {


  return AppState(
    isLoading: loadingReducer(state.isLoading, action),
    counter:  counterReducer(state.counter, action)
  );
}