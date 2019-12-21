import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: [
            emailfield(),
            passwordfield(),
            Container(
              margin: EdgeInsets.all(10.0),
            ),
            submitButton(),
          ],
        ),
      ),
    );
  }
}

Widget emailfield() {
  return TextFormField(
    //show the @ on the main keybord for user
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: 'Email adress',
      hintText: 'you@example.com',
    ),
  );
}

Widget passwordfield() {
  return TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      labelText: 'Password',
      hintText: 'Password',
    ),
  );
}

Widget submitButton() {
  return RaisedButton(
    color: Colors.amber,
    child: Text('Submit'),
    onPressed: () {},
  );
}
