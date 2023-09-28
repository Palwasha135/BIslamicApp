

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';
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
        actions: [
IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const FifthScreen()));
     }, icon:const Icon(Icons.dehaze_rounded),iconSize: 38,)
        ],
      ),
      body: Column(children: const [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/screen2.jpg', iconData: Homeicon()))),

],),
//  bottomNavigationBar:IconButton(onPressed: (){
// Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//           }, icon: const Icon(Icons.home_rounded),iconSize: 44,color: Colors.deepOrange,),
    );
  }
}