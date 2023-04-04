import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("aseets/images/food2.jpg"))),
          ),
          SizedBox(
            width: 380,
            child: Column(
              children: const [
                SizedBox(
                  height: 300,
                ),
                Text(
                  "Welcome To\nFOOD APP",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 40,
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}