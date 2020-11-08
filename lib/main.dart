import 'package:employement/Screen/HireHome.dart';
import 'package:employement/Screen/LocationScreen.dart';
import 'package:flutter/material.dart';
import 'Screen/LocationScreen.dart';
import 'Screen/LoginScreen.dart';
import 'Screen/RegistrationScreen.dart';
import 'Screen/HireHome.dart';
import 'Screen/RequestHome.dart';
import 'Screen/DescriptionScreen.dart';
import 'Screen/WorkerScreen.dart';
void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  home: ReqHome(),
  );
  }
  }