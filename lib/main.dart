import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.max,
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
                child: Divider(
                  color: Colors.teal.shade100,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
                child: ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  title: Text(
                    '+1 501-499-5908',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 45.0),
                child: ListTile(
                  leading: Icon(
                    Icons.email_sharp,
                    color: Colors.black,
                    size: 30.0,
                  ),
                  title: Text(
                    'coletoncodes@gmail.com',
                    style: TextStyle(
                      fontSize: 20.0,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () => launch(
                            'https://www.linkedin.com/in/coletongorecke/'),
                        icon: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.black,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () =>
                            launch('https://github.com/coletoncodes'),
                        icon: Icon(
                          FontAwesomeIcons.githubSquare,
                          color: Colors.black,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: 60.0,
                      height: 60.0,
                      color: Colors.white,
                      child: IconButton(
                        onPressed: () => launch(
                            'https://www.linkedin.com/in/coletongorecke/'),
                        icon: Icon(
                          FontAwesomeIcons.instagramSquare,
                          color: Colors.black,
                          size: 40.0,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
