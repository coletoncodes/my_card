import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'components/large_elevated_button.dart';

void main() {
  runApp(MyCard());
}

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/gradient.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            height: double.infinity,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  foregroundImage: AssetImage('images/portrait.jpeg'),
                ),
                Text(
                  'Coleton Gorecke',
                  style: TextStyle(
                    fontFamily: 'ReenieBeanie',
                    fontSize: 50.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'App Developer',
                  style: TextStyle(
                    fontFamily: 'Source Sans Pro',
                    fontSize: 25.0,
                    color: Colors.tealAccent,
                    letterSpacing: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.0,
                  width: 150.0,
                ),
                LargeElevatedButton(
                  icon: Icons.phone,
                  text: 'Give Me A Call',
                  urlString: 'tel://5014995908',
                ),
                LargeElevatedButton(
                  icon: Icons.mail,
                  text: 'Email Me',
                  urlString: 'mailto:coletoncodes@gmail.com',
                ),
                LargeElevatedButton(
                  icon: FontAwesomeIcons.linkedin,
                  text: 'Connect on Linkedin',
                  urlString: 'https://www.linkedin.com/in/coletongorecke/',
                ),
                LargeElevatedButton(
                  icon: FontAwesomeIcons.githubSquare,
                  text: 'Check Out My GitHub',
                  urlString: 'https://www.github.com/coletoncodes',
                ),
                LargeElevatedButton(
                  icon: FontAwesomeIcons.instagramSquare,
                  text: 'Follow Me On Instagram',
                  urlString: 'https://www.instagram.com/coletongorecke',
                ),
                LargeElevatedButton(
                  icon: Icons.web,
                  text: 'Check Out My Portfolio',
                  urlString: 'https://www.coletoncodes.com',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
