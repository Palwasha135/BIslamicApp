

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';
import 'package:fyp/app/screens/thirdscreen.dart';


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
        onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdScreen()));
    },
        actions: const [],
      ),
      body: const Column(children:  [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/thanking1.3.jpg', iconData:Homeicon()))),


],),

    );
  }
}