


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/dua.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/duasmainScreen/level3mainScreen.dart';


class LeavinghouseScreen extends StatefulWidget {
  const LeavinghouseScreen({super.key});

  @override
  State<LeavinghouseScreen> createState() => _LeavinghouseScreenState();
}

class _LeavinghouseScreenState extends State<LeavinghouseScreen> {
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

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/level3/leavinghouse4.jpg', iconData:Homeicon()))),

],),

    );
  }
}