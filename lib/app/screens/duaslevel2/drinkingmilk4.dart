


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/dua.dart';
import 'package:fyp/app/components/homeicon.dart';
import 'package:fyp/app/screens/duasmainScreen/level2mainScreen.dart';


class MilkduaScreen extends StatefulWidget {
  const MilkduaScreen({super.key});

  @override
  State<MilkduaScreen> createState() => _MilkduaScreenState();
}

class _MilkduaScreenState extends State<MilkduaScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Level2Screen()));
    },
        actions: const[],
      ),
      body: const Column(children:  [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/level2/drinkingmilk4.jpg', iconData:Homeicon()))),

],),

    );
  }
}