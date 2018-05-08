import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sample_architecture/pages/home_page.dart';
class  Routes {
  final Router _router;
  static final String home = "/";
  static final Routes _instance = new Routes._internal();

  Routes._internal():_router = new Router() {
    _router.define(home, handler: homeHandler);
  }


  factory Routes(){
    return _instance;
  }

  get generator => _router.generator;
  var homeHandler = new Handler(handlerFunc: (BuildContext context, Map<String, List<String>> params) {
    return new HomePage();
  });
}