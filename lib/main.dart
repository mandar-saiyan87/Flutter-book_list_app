// ignore_for_file: prefer_const_constructors

import 'package:book_list_app/book_list.dart';
import 'package:book_list_app/routes_Generator.dart';
import "package:flutter/material.dart";

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      // home: BookList(),
      onGenerateRoute: RouteGenerator.routeGenerator,
    );
  }
}
