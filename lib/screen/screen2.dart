import 'package:flutter/material.dart';
import 'package:introapp/screen/screen3.dart';
import 'homepage.dart';

class screen2 extends StatefulWidget {
  const screen2({Key? key}) : super(key: key);

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const screen3(),
                ));
          },
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: double.infinity,
                color: Colors.deepOrange,
              ),
              Column(
                children: [
                 SizedBox(
                   height: 300,
                 ),
                  const Text(
                    "     Super Fast Pizza",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Delivery.",
                    style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 30),
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