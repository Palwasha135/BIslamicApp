


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/duasmainScreen/level1mainScreen.dart';

import '../components/dua.dart';

void main(){
  runApp(const TwelfthScreen());
}
class TwelfthScreen extends StatefulWidget {
  const TwelfthScreen({super.key});

  @override
  State<TwelfthScreen> createState() => _TwelfthScreenState();
}

class _TwelfthScreenState extends State<TwelfthScreen> {
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

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/stairs1.9.jpg', iconData: Homeicon()))),

],),
 
    );
  }
}