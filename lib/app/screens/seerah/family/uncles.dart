import 'package:flutter/material.dart';
 import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/screens/seerah/family/family_gridform_screen.dart';
import '../../../reusable_widgets/dua_screen_widget.dart';

class UnclenamesScreen extends StatefulWidget {
  const UnclenamesScreen({super.key});

  @override
  State<UnclenamesScreen> createState() => _UnclenamesScreenState();
}

class _UnclenamesScreenState extends State<UnclenamesScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: MyAppBar(
        onleadingtap: () {
      Navigator.pop(context, MaterialPageRoute(builder: (context)=> const FamilygridformScreen()));
    },
        actions:const  [],
      ),
      body: const Column(children:  [

  Expanded(child: Center(child: DuaScreen(assetImagePath: 'assets/images/Seerah/uncles.jpg', iconData: Homeicon()))),

],),
    );
  }
}