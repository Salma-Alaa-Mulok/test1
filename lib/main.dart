import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Account'),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.blue],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/Default_The_moon_and_sun_collide_in_a_burst_of_vibrant_colors_0.png'),
              ),
              SizedBox(height: 16),
              Text(
                'Salma Alaa',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              Text(
                'Machine Learning',
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
              SizedBox(height: 24),
              ListTile(
                leading: Icon(Icons.phone, color: Colors.white),
                title: Text(
                  '+123456789',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                },
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.white),
                title: Text(
                  's@gmail.com',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
