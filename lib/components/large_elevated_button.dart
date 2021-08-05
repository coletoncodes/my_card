import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LargeElevatedButton extends StatelessWidget {
  const LargeElevatedButton({
    @required this.url,
    @required this.text,
    this.icon,
    this.iconColor,
  });

  final String url;
  final String text;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    // Widget Default Variables
    final iconColor = Colors.black;
    //
    return GestureDetector(
      onTap: () => launch(url),
      child: Card(
        elevation: 14.0,
        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
        child: ListTile(
          leading: Icon(
            icon,
            color: iconColor,
            size: 40.0,
          ),
          title: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Source Sans Pro',
              fontSize: 22.0,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
