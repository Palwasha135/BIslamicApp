

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
 import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/duasmainScreen/level1mainScreen.dart';
//import 'package:fyp/app/screens/home.dart';

import '../components/dua.dart';


class FifthScreen extends StatefulWidget {
  const FifthScreen({super.key});

  @override
  State<FifthScreen> createState() => _FifthScreenState();
}

class _FifthScreenState extends State<FifthScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const ThirdScreen()));
    },
        actions:const  [],
      ),
      body: const Column(children:  [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/afraid1.2.jpg', iconData: Homeicon()))),

],),
//  bottomNavigationBar:IconButton(onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//           }, icon: const Icon(Icons.home_rounded),iconSize: 44,color: Colors.deepOrange,),
    );
  }
}