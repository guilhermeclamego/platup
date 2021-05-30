import 'package:flutter/material.dart';

class DarshboardPage extends StatefulWidget {
  @override
  _DarshboardPageState createState() => _DarshboardPageState();
}

class _DarshboardPageState extends State<DarshboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Dashboard')),
        backgroundColor: Colors.white);
  }
}
