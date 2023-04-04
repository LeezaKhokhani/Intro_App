import 'package:flutter/material.dart';
import 'package:introapp/screen/screen1.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../main.dart';
import 'homepage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  logicIntro() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('counter', 1);
  }

  @override
  void initState() {
    super.initState();
    logicIntro();
    Future.delayed(
      const Duration(seconds: 4),
          () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => (counter == 0 || counter == null)
                ? const screen1()
                : const HomePage(),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const screen1(),
                ));
          },
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage("aseets/images/images2.jpg"))),
              ),
              const Center(
                child: Text(
                  "FOOD APP",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 45),
                ),
              )
            ],
          )
      ),
    );
  }
}