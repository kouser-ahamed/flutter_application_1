import 'package:flutter/material.dart';

void main() {
  runApp(Test());
}
// Based on Layout
/*
1. Shadow
2. Depth
3. Motion
.
assets\images\photo01.png
*/

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Basic UI - Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic UI - Flutter"),
          centerTitle: true,
          elevation: 3.5,
          foregroundColor: Colors.blue,
          shadowColor: const Color.fromARGB(167, 128, 128, 128),
        ),
        body: Container(
          margin: EdgeInsets.all(50),
          padding: EdgeInsets.all(30),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/photo01.png'),
              fit: BoxFit.cover,
              alignment: Alignment.center,
              opacity: 1,
            ),
            boxShadow: [
              BoxShadow(
                color: const Color.fromARGB(154, 255, 247, 0),
                blurRadius: 20,
                blurStyle: BlurStyle.outer,
              ),
              BoxShadow(
                color: const Color.fromARGB(255, 34, 34, 34),
                blurRadius: 10,
                blurStyle: BlurStyle.outer,
              ),
            ],
            color: const Color.fromARGB(255, 247, 255, 7),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Text("Welcome Back..!"),
        ),
      ),
    );
  }
}