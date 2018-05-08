import 'package:meta/meta.dart';
import 'package:flutter_sample_architecture/model/receipt.dart';

@immutable
class AppState {
  final bool isLoading;
  final int counter;

  AppState({
    this.isLoading = false,
    this.counter = 0
  });

  factory AppState.loading() => AppState(isLoading : false);
}