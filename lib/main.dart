// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:fyp/app/constant.dart';
import 'package:fyp/app/provider/theme_provider.dart';
import 'package:fyp/app/screens/home.dart';
import 'package:provider/provider.dart';
// import 'dart:html';
// import 'dart:io';

void main(){
  runApp(const MyApp());
}

  class MyApp extends StatelessWidget {
     //static const String title = 'Light & Dark Theme';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) 
  //                      Theme coding
  // => ChangeNotifierProvider(
  //       create: (context) => ThemeProvider(),
  //       builder: (context, _) {
  //         final themeProvider = Provider.of<ThemeProvider>(context);
{
    return   MaterialApp(
      
      title: 'B Islamic',
      //                             THEME CODING
            // themeMode: themeProvider.themeMode,
            // theme: MyThemes.lightTheme,
            // darkTheme: MyThemes.darkTheme,
      theme: ThemeData(
        appBarTheme:const  AppBarTheme(toolbarHeight:200),
        scaffoldBackgroundColor:kbgcolor,
      ),
    debugShowCheckedModeBanner: false,
  home:const   HomeScreen(),

  );
  
  }
        }
  //);
  //}    

