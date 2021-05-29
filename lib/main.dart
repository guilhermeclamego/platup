import 'package:flutter/material.dart';
import 'package:platup/src/components/login.page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  static const String _title = 'PlatUp';

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: LoginPage(),
    );
  }
}
