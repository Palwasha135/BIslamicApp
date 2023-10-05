


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/dua.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/duasmainScreen/level3mainScreen.dart';


class EntringMasjidScreen extends StatefulWidget {
  const EntringMasjidScreen({super.key});

  @override
  State<EntringMasjidScreen> createState() => _EntringMasjidScreenState();
}

class _EntringMasjidScreenState extends State<EntringMasjidScreen> {
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

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/level3/entringMasjid2.jpg', iconData:Homeicon()))),

],),

    );
  }
}