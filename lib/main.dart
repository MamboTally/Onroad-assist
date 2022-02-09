import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:tscz/pages/landing.dart';
import 'package:tscz/pages/login.dart';
import 'package:tscz/pages/nofications.dart';
import 'package:tscz/pages/signup.dart';
import 'map.dart';


void main() async {
    // These two lines
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(); runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
  theme: ThemeData(primaryColor: Color(0xff543B7A)),
  routes: {
    
     '/': (context) => Homeview(),
     '/sigupview': (context) => SignupView(),
    '/MyHomePage': (context) => MyHomePage(),
   '/NewP': (context) => NewP(),
   '/Notice': (context) => Notice()
  },
));
} 