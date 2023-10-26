

// ignore_for_file: sort_child_properties_last


import'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/level.dart';
import 'package:fyp/app/screens/Dua/dua_level3/afterwuduScreen.dart';
import 'package:fyp/app/screens/Dua/dua_level3/entringMasjidScreen.dart';
import 'package:fyp/app/screens/Dua/dua_level3/leavingMasjidScreen.dart';
import 'package:fyp/app/screens/Dua/dua_level3/leavinghouseScreen.dart';
import 'package:fyp/app/screens/Dua/dua_level3/wearingclothsScreen.dart';
import 'package:fyp/app/screens/dua/dua_level3/newclothesScreen.dart';
import 'package:fyp/app/screens/secondscreen.dart';

class Level3Screen extends StatefulWidget {
  const Level3Screen({super.key});

  @override
  State<Level3Screen> createState() => _Level3ScreenState();
}

class _Level3ScreenState extends State<Level3Screen> {
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
        appBar: MyAppBar(
          //title: 'B Islamic',
  
    onleadingtap: () {
      Navigator.pop(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
    },
    actions:  const [],
        ),
        body:GridView(gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 9,crossAxisSpacing: 19,),
      children: [
        
        Expanded(
          child: Levels(title: ' When Wearing Cloths', containercolor: Colors.orange, image: 'assets/images/level3/1.png', onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const WearingclothsScreen ()));
            }),
        ),
        Levels(title: ' When Wearing New Clothes ', containercolor: Colors.pinkAccent, image: 'assets/images/level3/newclothesimg.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const WearingnewClothesScreen()));
    }) ,
    Levels(title: ' When Entring The Masjid ', containercolor: Colors.pinkAccent, image: 'assets/images/level3/2.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const EntringMasjidScreen()));
    }) ,
      
      Levels(title: ' When Leaving The Masjid', containercolor: Colors.purple, image: 'assets/images/level3/3.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LeavingMasjidScreen()));
    }),
    Levels(title: ' When Leaving The House ', containercolor: Colors.red, image: 'assets/images/level3/4.jpg', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const LeavinghouseScreen ()));
    }) ,
    Levels(title: 'After Wudu ', containercolor: Colors.blueAccent, image: 'assets/images/level3/5.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const AfterWuduScreen ()));
     }) ,
    //Levels(title: 'Dua Before Going To Bed', containercolor: Colors.cyanAccent, image: 'assets/images/level2/6.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const BedduaScreen()));
    // }) ,
    // Levels(title: 'Dua When Waking Up', containercolor: Colors.deepOrange, image: 'assets/images/level2/7.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const WakingupScreen()));
    // }) ,
    // Levels(title: ' Dua When Entring The Toilet', containercolor: Colors.pink, image: 'assets/images/level2/8.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const EntringScreen()));
    // }) ,
    // Levels(title: 'Dua When Leaving The Toilet', containercolor: Colors.yellow, image: 'assets/images/level2/9.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LeavingScreen()));
    // }) ,
    // Levels(title: 'Dua When Hear Bad News', containercolor: Colors.brown, image: 'assets/images/level2/10.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const BadnewsScreen()));
    // }) ,
      ],
      
    ),
    bottomNavigationBar:const Homeicon(),
   
    );
        
        
        
  }
}