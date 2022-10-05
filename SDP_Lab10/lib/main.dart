import 'package:flutter/material.dart';
import 'package:sdp_lab10_ce145/pages/choose_location.dart';
import 'package:sdp_lab10_ce145/pages/home.dart';
import 'package:sdp_lab10_ce145/pages/loading.dart';


void main() => runApp(MaterialApp(
  // home: Home(),
  initialRoute: '/',

  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));