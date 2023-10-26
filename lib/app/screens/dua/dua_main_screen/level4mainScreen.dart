

// ignore_for_file: sort_child_properties_last


import'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/level.dart';
import 'package:fyp/app/screens/dua/dua_level4/afterAdhan.dart';
import 'package:fyp/app/screens/dua/dua_level4/Iftartime.dart';
import 'package:fyp/app/screens/dua/dua_level4/duringdonkeyvoice.dart';
import 'package:fyp/app/screens/dua/dua_level4/lailatulqadar.dart';
import 'package:fyp/app/screens/secondscreen.dart';

class Level4Screen extends StatefulWidget {
  const Level4Screen({super.key});

  @override
  State<Level4Screen> createState() => _Level4ScreenState();
}

class _Level4ScreenState extends State<Level4Screen> {
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
          child: Levels(title: 'After Adhan', containercolor: Colors.lightGreen, image: 'assets/images/level4/afteradhanimg.png', onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const AfteradhanScreen ()));
            }),
        ),
        Levels(title: 'At The Time Of Iftar ', containercolor: Colors.deepOrangeAccent, image: 'assets/images/level4/iftartimeimg.jpg', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const IftartimeScreen()));
    }) ,
    Levels(title: ' For Lailat-ul-Qadar', containercolor: Colors.cyan, image: 'assets/images/level4/lailatulqadarimg.jpg', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const LailatulqadarScreen()));
    }) ,
      
      Levels(title: ' When Hear The Voice Of Donkey', containercolor: Colors.purple, image: 'assets/images/level4/duringdonkeyvoiceimg.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const DuringdonkeyvoiceduaScreen()));
    }),
    // Levels(title: ' When Leaving The House ', containercolor: Colors.red, image: 'assets/images/level3/4.jpg', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const LeavinghouseScreen ()));
    // }) ,
    // Levels(title: 'After Wudu ', containercolor: Colors.blueAccent, image: 'assets/images/level3/5.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const AfterWuduScreen ()));
    //  }) ,
    
      ],
      
    ),
    bottomNavigationBar:const Homeicon(),
   
    );
        
        
        
  }
}