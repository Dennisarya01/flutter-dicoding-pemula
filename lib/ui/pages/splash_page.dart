import 'dart:async';

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home-page');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/icon_plane_nobg.png'),
                ),
              ),
            ),
            Text(
              'FASTER AIRPLANE',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 10,
                  color: Color(0xFFFFFFFF)),
            )
          ],
        ),
      ),
    );
  }
}
