import 'package:flutter/material.dart';

class LoadScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 226, 59, 10),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/logo.png",
                height: 160,
                width: 160,
              ),
              const SizedBox(
                height: 15,
              ),
              const Text('MacGyver',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 40,
                      color: Colors.white)),
              const SizedBox(
                height: 45,
              ),
              Image.asset(
                "assets/images/load.png",
                height: 100,
                width: 100,
              ),
            ]),
      ),
    );
  }
}
