import 'package:fashion_app/constants.dart';
import 'package:fashion_app/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'The Flutter way',
        theme: ThemeData(
            primarySwatch: Colors.blue,
            fontFamily: "Gordita",
            scaffoldBackgroundColor: bgColor,
            textTheme:
                const TextTheme(bodyText2: TextStyle(color: Colors.black54))),
        home: const HomeScreen());
  }
}
