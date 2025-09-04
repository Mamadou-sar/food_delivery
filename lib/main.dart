import 'package:flutter/material.dart';

import 'constants/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: TColors.primary),
      ),
      home: const Scaffold(
        body: Center(child: Text('Hello, World!')),
        backgroundColor: Color(0xffffffff),
      ),
    );
  }
}
