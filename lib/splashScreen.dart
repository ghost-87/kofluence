import 'package:flutter/material.dart';
import 'package:flutter_app/pages/HomePage.dart';
import 'package:flutter_app/pages/SignInPage.dart';
import 'package:flutter_app/pages/SignUpPage.dart';
import 'package:flutter_app/animation/ScaleRoute.dart';

class SplashScreenPage extends StatefulWidget {
  SplashScreenPage({Key key}) : super(key: key);

  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/appLogo.png',
                width: MediaQuery.of(context).size.width * 0.5),
            Text(
              'KOFLUENCE',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),
            FloatingActionButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => HomePage(),
                ),
              ),
              tooltip: 'Move Forward',
              child: Icon(Icons.arrow_right_sharp, size: 50),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    ScaleRoute(
                      page: SignInPage(),
                    ),
                  ),
                  child: Text('Log In'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                    context,
                    ScaleRoute(
                      page: SignUpPage(),
                    ),
                  ),
                  child: Text('Sign Up'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
