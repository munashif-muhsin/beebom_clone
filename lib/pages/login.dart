import 'package:beebom_clone/pages/login_with_email.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Decoration _buildPageBackground() {
    return BoxDecoration(
      color: Colors.white,
      image: DecorationImage(
        image: AssetImage('assets/login_background.jpeg'),
        fit: BoxFit.cover,
        repeat: ImageRepeat.noRepeat,
        colorFilter:
            ColorFilter.mode(Colors.white.withOpacity(0.3), BlendMode.dstATop),
      ),
    );
  }

  Widget _buildLogoContainer() {
    return Container(
      margin: EdgeInsets.only(top: 50),
      child: Row(
        children: <Widget>[
          SizedBox(width: 20.0),
          Image.asset(
            'assets/beebom_logo.png',
            width: 90.0,
            height: 90.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Beebom',
                  style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'Tech That Matters',
                  style: TextStyle(fontSize: 14.0, color: Colors.black87),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButtonChild(String buttonText, String imageUrl,
      {Map<String, double> iconSize}) {
    double imageWidth = 35.0;
    double imageHeight = 35.0;
    if (iconSize != null) {
      imageWidth = iconSize['width'];
      imageHeight = iconSize['height'];
    }

    return Container(
      width: 250,
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            buttonText,
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w300),
          ),
          Image.asset(
            'assets/$imageUrl',
            width: imageWidth,
            height: imageHeight,
          ),
        ],
      ),
    );
  }

  Widget _buildLoginButtons(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 70),
      // color: Colors.red,
      child: Column(
        children: <Widget>[
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(55.0),
            ),
            color: Color(0xFF3C5A99),
            child:
                _buildLoginButtonChild('Continue with Facebook', 'fb_icon.png'),
            onPressed: () {},
          ),
          SizedBox(height: 15.0),
          FlatButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(55.0),
            ),
            color: Color(0xFFDB4437),
            child: _buildLoginButtonChild(
              'Continue with Google',
              'google_icon.png',
              iconSize: {'width': 35, 'height': 20},
            ),
            onPressed: () {},
          ),
          SizedBox(height: 15.0),
          FlatButton(
            shape: RoundedRectangleBorder(
              side: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(55.0),
            ),
            color: Colors.black87,
            child: _buildLoginButtonChild(
              'Continue with Email',
              'email_icon.png',
              iconSize: {'width': 35, 'height': 20},
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginWithEmailPage()));
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10.0),
        decoration: _buildPageBackground(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildLogoContainer(),
            _buildLoginButtons(context),
          ],
        ),
      ),
    );
  }
}
