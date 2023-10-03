


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/thirdscreen.dart';

import '../components/dua.dart';

void main(){
  runApp(const EleventhScreen());
}
class EleventhScreen extends StatefulWidget {
  const EleventhScreen({super.key});

  @override
  State<EleventhScreen> createState() => _EleventhScreenState();
}

class _EleventhScreenState extends State<EleventhScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdScreen()));
    },
        actions: const [],
      ),
      body: const Column(children:  [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/illness1.8.jpg', iconData: Homeicon()))),

],),
 
    );
  }
}