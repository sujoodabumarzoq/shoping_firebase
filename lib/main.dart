import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:shoping/Features/home/presentation/HomeScreen.dart';

import 'Features/login/presentation/login__screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
    systemNavigationBarColor:Colors.transparent,
  ));//ok fine let's start
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
