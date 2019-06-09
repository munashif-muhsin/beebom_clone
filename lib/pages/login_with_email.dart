import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginWithEmailPage extends StatefulWidget {
  @override
  _LoginWithEmailPageState createState() => _LoginWithEmailPageState();
}

class _LoginWithEmailPageState extends State<LoginWithEmailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(new FocusNode()),
        child: Container(
          color: Colors.red.withOpacity(0),
          padding: EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50.0),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.7),
                ),
              ),
              Container(
                alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 20.0),
                child: Text(
                  'Please fill in your details',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  cursorColor: Colors.black45,
                  style: TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                child: TextField(
                  cursorColor: Colors.black45,
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(color: Colors.grey),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                child: FlatButton(
                  child: Text('Login'),
                  onPressed: () {},
                ),
              ),
              Container(
                child: FlatButton(
                  child: Text(
                    'Don\'t have an Account? Sign Up.',
                    style: TextStyle(color: Colors.grey),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
