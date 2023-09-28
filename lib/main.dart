// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:fyp/app/constant.dart';
import 'package:fyp/app/screens/home.dart';
// import 'dart:html';
// import 'dart:io';

void main(){
  runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      
      theme: ThemeData(
        appBarTheme:const  AppBarTheme(toolbarHeight:200),
        scaffoldBackgroundColor:kbgcolor,
      ),
    debugShowCheckedModeBanner: false,
  home: const HomeScreen(),
  
  );
  }
}

