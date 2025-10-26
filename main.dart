import 'package:flutter/material.dart';

void main() {
  runApp(MooVeesApp());
}

class MooVeesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'MooVees',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
              ),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Image.asset(
                    'assets/logoMoovee.jpg',
                    width: 500,
                    height: 300,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'By JoMiA',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white,
                        backgroundColor: Colors.black54,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text('Iniciar sesión'),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Registrarse'),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.facebook, color: Colors.blue, size: 32),
                  SizedBox(width: 20),
                  Icon(Icons.g_mobiledata, color: Colors.red, size: 32),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}