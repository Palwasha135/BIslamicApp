import 'package:flutter/material.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/dua.dart';
import 'package:fyp/app/components/homeicon.dart';

class Tauheedscreen extends StatelessWidget {
  const Tauheedscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Scaffold(
appBar: MyAppBar(
  actions: []),
body: DuaScreen(assetImagePath: 'assets/images/Tscreen.jpg', iconData:  Homeicon(),




    ),
    );
  }
}