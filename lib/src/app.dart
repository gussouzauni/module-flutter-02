import 'package:flutter/material.dart';
import 'package:module_flutter_02/src/screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(context) {
    return MaterialApp(
      title: 'Log me In!',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Build a textformfield'),
          backgroundColor: Colors.amber,
        ),
        body: LoginScreen(),
      ),
    );
  }
}
