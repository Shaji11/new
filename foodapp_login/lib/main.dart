import 'package:flutter/material.dart';
import 'package:foodapp_login/container_create.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.transparent, 
        body: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.pink[50]!, Colors.indigo[200]!],
                ),
              ),
            ),
            Positioned(
             bottom: 500,
             width: 40,
             left: 100,
             height: 55,
              child: Image.asset(
                'assets/burger.jpg', 
              ),
            ),
             Positioned(
             bottom: 450,
             width: 60,
             left: 220,
              child: Image.asset(
                'assets/donut.jpg', 
              ),
            ),
             Positioned(
             bottom: 500,
             width: 40,
             left: 370,
             height: 50,
              child: Image.asset(
                'assets/frenchfries.jpg', 
              ),
            ),
             
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                 CustomWidget(
                    title1: 'Sign Up',
                    hint1: 'Email address',
                    hint2: '****',
                    title2: 'Already have an account?',
                    onPressed: () {},
                 ),
                ],
              ),
            ),
          ],
        ),
        appBar: AppBar(
          centerTitle: true,
          title: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Order food', style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              Text('at your door', style: TextStyle(fontSize:25, fontWeight: FontWeight.bold)),
            ],
          ),
          backgroundColor: Colors.pink[50],
        ),
      ),
    );
 }
}


