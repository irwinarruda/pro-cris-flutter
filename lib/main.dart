import 'package:flutter/material.dart';

import 'styles/theme_data.dart';

import 'screens/sign_in/sign_in.dart';
import 'screens/sign_up/sign_up.dart';
import 'screens/students/students.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ProCris App',
      theme: ProCrisTheme.theme,
      initialRoute: '/students',
      debugShowCheckedModeBanner: false,
      routes: {
        '/sign_in': (BuildContext context) => SignIn(),
        '/sign_up': (BuildContext context) => SignUp(),
        '/students': (BuildContext context) => Students(),
      },
    );
  }
}
