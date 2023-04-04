import 'package:flutter/material.dart';
import 'package:introapp/screen/screen2.dart';
import 'homepage.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const screen2(),
                ));
          },
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.amber,
              ),
              Column(
                children:  [
                  SizedBox(
                    height: 300,
                  ),
                  Text(
                    "     Order Favourite",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Pizzza.",
                    style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold, fontSize: 35),
                  ),
                ],
              ),
            ],
          )),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HomePage(),
              ));
        },
        child: const Text("Skip"),
      ),
    );
  }
}