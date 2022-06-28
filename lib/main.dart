import 'package:algoriza_t1/on_boarding_page.dart';
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
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Product Sans',
        primarySwatch: Colors.blue,
      ),
      home: OnBoardingPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
