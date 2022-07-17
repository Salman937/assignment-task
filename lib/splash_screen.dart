import 'dart:ui';

import 'package:first_fultter/screens/main_page.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  String title = '';
  DateTime dateTime = DateTime.now();

  @override
  void initState() {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.push(context, MaterialPageRoute(builder: (_) => MainPage()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int newTime = int.parse(DateFormat('kk').format(dateTime));

    if (newTime <= 12) {
      title = 'Good Morning';
    }else if(newTime >= 12 && newTime <= 16){
      title = 'Good Evening';
    }else if(newTime >= 16 && newTime <= 21){
      title = 'Good After Noon';
    }

    return Scaffold(
      backgroundColor: Colors.amber[800],
      body: Center(
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 50,
            fontFamily: 'Delmon Delicate',
          ),
        ),
      ),
    );
  }
}
