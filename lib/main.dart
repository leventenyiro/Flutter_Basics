import "package:flutter/material.dart";
import 'package:flutter_basic/pages/choose_location.dart';
import 'package:flutter_basic/pages/loading.dart';
//import "package:world_time/pages/home.dart";
import "pages/home.dart";

void main() => runApp(MaterialApp(
  initialRoute: "/home",
  routes: {
    "/": (context) => Loading(),
    "/home": (context) => Home(),
    "/location": (context) => ChooseLocation(),
  },
  debugShowCheckedModeBanner: false,
));