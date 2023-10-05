


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/dua.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/duasmainScreen/level2mainScreen.dart';


class BadnewsScreen extends StatefulWidget {
  const BadnewsScreen({super.key});

  @override
  State<BadnewsScreen> createState() => _BadnewsScreenState();
}

class _BadnewsScreenState extends State<BadnewsScreen> {
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

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/level2/badnews10.jpg', iconData:Homeicon()))),

],),

    );
  }
}