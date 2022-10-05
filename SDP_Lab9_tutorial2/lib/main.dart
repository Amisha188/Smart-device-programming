import 'package:flutter/material.dart';
import 'package:sdp_lab9_ce145_t2/loading.dart';
import 'choose_location.dart';
import 'home.dart';


void main() => runApp(MaterialApp(
  // home: Home(),
  initialRoute: '/',

  routes: {
    '/': (context) => Loading(),
    '/home': (context) => Home(),
    '/location': (context) => ChooseLocation(),
  },
));