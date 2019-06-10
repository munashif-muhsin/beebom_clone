import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingsSheet extends StatelessWidget {
  Widget _buildShareCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      decoration: BoxDecoration(
        color: Colors.cyan,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Enjoying our App? ',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15.0),
          Text(
            'Your Friends might like it too',
          ),
          Container(
            alignment: Alignment.centerRight,
            child: FlatButton(
              onPressed: () {
                Share.share('Check this crazy app out.');
                Navigator.pop(context);
              },
              child: Text('LET\'S SHARE'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFooterLinks(BuildContext context) {
    return Row(
      children: <Widget>[
        GestureDetector(
          onTap: () {
            _launchUrl('https://beebom.com/about-us/');
            Navigator.pop(context);
          },
          child: Text(
            'About Us',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 20.0),
        GestureDetector(
          onTap: () {
            _launchUrl('https://github.com/munashif-muhsin');
            Navigator.pop(context);
          },
          child: Text(
            'Contact Us',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: 20.0),
        GestureDetector(
          onTap: () {
            _launchUrl('https://github.com/munashif-muhsin');
            Navigator.pop(context);
          },
          child: Text(
            'Rate Us',
            style: TextStyle(
                color: Colors.grey,
                fontSize: 18.0,
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  void _launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(bottom: 30.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          _buildShareCard(context),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            margin: EdgeInsets.symmetric(vertical: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Push Notification not working? ',
                  style: TextStyle(color: Colors.grey, fontSize: 16.0),
                ),
                GestureDetector(
                  onTap: () {
                    _launchUrl('https://github.com/munashif-muhsin');
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Have a look at this support article',
                    style: TextStyle(
                        color: Colors.lightBlueAccent,
                        fontSize: 16.0,
                        decoration: TextDecoration.underline),
                  ),
                ),
                SizedBox(height: 30.0),
                _buildFooterLinks(context),
              ],
            ),
          )
        ],
      ),
    );
  }
}
