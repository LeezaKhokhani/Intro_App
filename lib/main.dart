import 'package:flutter/material.dart';
import 'package:introapp/screen/splash_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? counter = 0;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final prefs = await SharedPreferences.getInstance();
  counter = prefs.getInt('counter');

  await prefs.setInt('counter', 1);

  runApp(
      const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: SplashScreen(),
  ));
}