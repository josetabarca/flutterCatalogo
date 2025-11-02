import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MooVee',
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: screenSize.width,
            height: screenSize.height,
            child: Image.asset(
              'assets/filmhome.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: screenSize.width,
            height: screenSize.height,
            color: Colors.black.withValues(alpha: 0.5),
          ),
          Center(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Bienvenido a MooVee',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenSize.width * 0.1,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 154, 202, 222),            
                      shadows: [
                        Shadow(
                          offset: Offset(8.0, 6.0),
                          blurRadius: 3.0,
                          color: Colors.black.withValues(alpha: 0.7),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}