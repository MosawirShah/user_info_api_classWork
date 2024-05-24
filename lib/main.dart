import 'package:flutter/material.dart';
import 'package:user_data_api/splash_view.dart';
import 'package:user_data_api/user_data_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(),
    );}}

