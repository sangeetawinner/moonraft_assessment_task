import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modal/assesment_modal.dart';
import 'presentation/screens/home_screen.dart';
import 'route/route.dart' as route;

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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      onGenerateRoute: route.controller,
      initialRoute: route.homeScreen,
      //  home: const HomeScreen(),
      // home: Scaffold(
      //   body: ListView.builder(
      //       itemCount: 10,
      //       itemBuilder: (context, index) {
      //         return Text(index.toString());
      //       }),
      // ),
    );
  }
}
