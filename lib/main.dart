import 'package:flutter/material.dart';
import 'package:session_12/TabBar+FloatingActionButton.dart';
import 'package:splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Session 12',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SplashScreen(
          seconds: 14,
          navigateAfterSeconds: TabBarPage(),
          title: new Text(
            'Welcome In SplashScreen',
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
          image: new Image.network(
              'https://flutter.io/images/catalog-widget-placeholder.png'),
          backgroundColor: Colors.white,
          loaderColor: Colors.red,
        ));
  }
}
