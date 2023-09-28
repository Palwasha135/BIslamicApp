


import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';
import 'package:fyp/app/screens/home.dart';

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
        actions: [
IconButton(onPressed: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const NinthScreen()));
     }, icon:const Icon(Icons.dehaze_rounded),iconSize: 38,)
        ],
      ),
      body: Column(children: const [

  Expanded(child: Center(child:DuaScreen(assetImagePath: 'assetImagePath', iconData: Homeicon()))),



],),
 bottomNavigationBar:IconButton(onPressed: (){
Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
          }, icon: const Icon(Icons.home_rounded),iconSize: 44,color: Colors.deepOrange,),
    );
  }
}