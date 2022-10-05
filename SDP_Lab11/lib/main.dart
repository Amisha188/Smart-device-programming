import 'package:flutter/material.dart';
import 'package:b4_ce145_lab11/pages/choose_location.dart';
import 'package:b4_ce145_lab11/pages/home.dart';
import 'package:b4_ce145_lab11/pages/loading.dart';


void main() => runApp(MaterialApp(
  // home: Home(),
  initialRoute: '/',

  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));