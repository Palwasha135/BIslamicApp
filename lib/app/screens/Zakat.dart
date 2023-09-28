import 'package:flutter/material.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/dua.dart';
import 'package:fyp/app/components/homeicon.dart';

class Zakatscreen extends StatelessWidget {
  const Zakatscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Scaffold(
appBar: MyAppBar(
  actions: []),
body: DuaScreen(assetImagePath: 'assets/images/Zscreen.jpg', iconData:  Homeicon(),




    ),
    );
  }
}