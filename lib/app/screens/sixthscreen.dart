

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';


import '../components/dua.dart';

void main(){
  runApp(const SixthScreen());
}
class SixthScreen extends StatefulWidget {
  const SixthScreen({super.key});

  @override
  State<SixthScreen> createState() => _SixthScreenState();
}

class _SixthScreenState extends State<SixthScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
        actions: [
IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SixthScreen()));
     }, icon:const Icon(Icons.dehaze_rounded),iconSize: 38,)
        ],
      ),
      body: Column(children: const [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/screen4.jpg', iconData:Homeicon()))),


],),

    );
  }
}