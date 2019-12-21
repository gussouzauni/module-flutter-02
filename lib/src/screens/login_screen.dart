import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
  //reference formState with globalkey
  final formKey = GlobalKey<FormState>();

  String email = '';
  String password = '';

  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
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

  Widget emailfield() {
    return TextFormField(
      //show the @ on the main keybord for user
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        labelText: 'Email adress',
        hintText: 'you@example.com',
      ),
      validator: (String value) {
        if (!value.contains('@')) {
          return 'Please, enter a email valid email';
        }
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordfield() {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      validator: (String value) {
        if (value.length < 4) {
          return 'Password must be at least 4';
        }
      },
      onSaved: (String value) {
        password = value;
      },
    );
  }

  Widget submitButton() {
    return RaisedButton(
      color: Colors.amber,
      child: Text('Submit'),
      onPressed: () {
        if (formKey.currentState.validate()) {
          //call currentState & save
          formKey.currentState.save();
        }
      },
    );
  }
}
