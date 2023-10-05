


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/dua.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/duasmainScreen/level3mainScreen.dart';


class AfterWuduScreen extends StatefulWidget {
  const AfterWuduScreen({super.key});

  @override
  State<AfterWuduScreen> createState() => _AfterWuduScreenState();
}

class _AfterWuduScreenState extends State<AfterWuduScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Level3Screen()));
    },
        actions: const[],
      ),
      body: const Column(children:  [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/level3/afterWudu5.jpg', iconData:Homeicon()))),

],),

    );
  }
}