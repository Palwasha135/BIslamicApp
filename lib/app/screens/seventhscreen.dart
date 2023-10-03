


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/thirdscreen.dart';

import '../components/dua.dart';

void main(){
  runApp(const SeventhScreen());
}
class SeventhScreen extends StatefulWidget {
  const SeventhScreen({super.key});

  @override
  State<SeventhScreen> createState() => _SeventhScreenState();
}

class _SeventhScreenState extends State<SeventhScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdScreen()));
    },
        actions: const [],
      ),
      body: const Column(children: [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/smiling1.4.jpg', iconData: Homeicon()))),


],),
 
    );
  }
}