import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isPassed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFe0e0e0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  isPassed = isPassed ? false : true;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  color: Color(0XFFe0e0e0),
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 30.0,
                      offset: Offset(10, 10),
                      color: Colors.grey,
                      spreadRadius: 2.0,
                      inset: isPassed,
                    ),
                    BoxShadow(
                      blurRadius: 30.0,
                      offset: Offset(-10, -10),
                      color: Color.fromARGB(255, 255, 255, 255),
                      spreadRadius: 2.0,
                      inset: isPassed,
                    ),
                  ],
                ),
                child: Center(
                  child: AnimatedContainer(
                    duration: const Duration(seconds: 2),
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Color(0xFFe0e0e0),
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 15.0,
                          offset: Offset(5, 5),
                          color: Colors.grey,
                          inset: isPassed,
                        ),
                        BoxShadow(
                          blurRadius: 15.0,
                          offset: Offset(-5, -5),
                          color: Colors.white,
                          inset: isPassed,
                        ),
                      ],
                    ),
                    child: Icon(Icons.apple, size: 60, color: Colors.grey[600]),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
