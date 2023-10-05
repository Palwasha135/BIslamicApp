


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/dua.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/duasmainScreen/level2mainScreen.dart';


class ForgetduaScreen extends StatefulWidget {
  const ForgetduaScreen({super.key});

  @override
  State<ForgetduaScreen> createState() => _ForgetduaScreenState();
}

class _ForgetduaScreenState extends State<ForgetduaScreen> {
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

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/level2/forgetdua2.jpg', iconData:Homeicon()))),

],),

    );
  }
}