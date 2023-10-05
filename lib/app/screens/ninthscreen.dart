


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';

import 'package:fyp/app/screens/duasmainScreen/level1mainScreen.dart';

import '../components/dua.dart';

void main(){
  runApp(const NinthScreen());
}
class NinthScreen extends StatefulWidget {
  const NinthScreen({super.key});

  @override
  State<NinthScreen> createState() => _NinthScreenState();
}

class _NinthScreenState extends State<NinthScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
         onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdScreen()));
    },
        actions:const [],
      ),
      body: const Column(children:  [

  Expanded(child: Center(child:DuaScreen(assetImagePath: 'assets/images/forgivness1.6.jpg', iconData: Homeicon()))),



],),
 
    );
  }
}