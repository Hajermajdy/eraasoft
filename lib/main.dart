import 'package:flutter/cupertino.dart';
import 'package:sessions/dio.dart';
import 'package:sessions/src/app_root.dart';

main(){
  DioHelper.init();
  runApp(AppRoot());
}