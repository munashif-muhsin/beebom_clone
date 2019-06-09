import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  InputDecoration _buildInputDecoration(String placeholder) {
    return InputDecoration(
      labelText: placeholder,
      labelStyle: TextStyle(color: Colors.grey),
      focusedBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
      enabledBorder:
          UnderlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white.withOpacity(0.9),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(height: 50.0),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Hello.',
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
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  cursorColor: Colors.black45,
                  style: TextStyle(color: Colors.black),
                  decoration: _buildInputDecoration('Full Name'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.black45,
                  style: TextStyle(color: Colors.black),
                  decoration: _buildInputDecoration('Email'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  cursorColor: Colors.black45,
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: _buildInputDecoration('Password'),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                child: TextField(
                  cursorColor: Colors.black45,
                  style: TextStyle(color: Colors.black),
                  obscureText: true,
                  decoration: _buildInputDecoration('Confirm Password'),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                margin: EdgeInsets.fromLTRB(10.0, 20.0, 10.0, 10.0),
                child: FlatButton(
                  child: Text('Signup'),
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
