import'package:flutter/material.dart';
import 'package:fyp/app/reusable_widgets/appbar.dart';
import 'package:fyp/app/reusable_widgets/home_icon.dart';
import 'package:fyp/app/reusable_widgets/level.dart';
import 'package:fyp/app/screens/seerah/introduction/birth_place_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/father_name_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/foster_,mothername_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/mother_name_screen.dart';
import 'package:fyp/app/screens/seerah/introduction/name_screen.dart';
import 'package:fyp/app/screens/seerah/seerah_main_screen.dart';

 
class IntroMainScreen extends StatefulWidget {
  const IntroMainScreen({super.key});

  @override
  State<IntroMainScreen> createState() => _IntroMainScreenState();
}

class _IntroMainScreenState extends State<IntroMainScreen> {
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
        appBar: MyAppBar(
          //title: 'B Islamic',
  
    onleadingtap: () {
    Navigator.pop(context,MaterialPageRoute(builder: (context) =>const  SeerahMainScreen()));
    },
    actions:  const [],
        ),
        body:GridView(gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 9,crossAxisSpacing: 19,),
      children: [
        
        Expanded(
          child: Levels(title: 'Name', containercolor: Colors.orange, image: 'assets/images/Seerah/name.png', onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const NameScreen()));
            }),
        ),
    Levels(title: 'Birth Place', containercolor: Colors.red, image: 'assets/images/Seerah/place.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const BirthplaceScreen()));
    }) ,
      
    //   Levels(title: 'Date Of Birth', containercolor: Colors.purple, image: 'assets/images/Seerah/dob.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const SixthScreen()));
    // }),
    Levels(title: ' Father Name ', containercolor: Colors.blueAccent, image: 'assets/images/Seerah/father.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const FathernameScreen()));
    }) ,
    Levels(title: 'Mother Name', containercolor: Colors.blueAccent, image: 'assets/images/Seerah/mother.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const MothernameScreen()));
    }) ,Levels(title: 'Foster Mother Name', containercolor: Colors.cyanAccent, image: 'assets/images/Seerah/fostermother.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const FosterMothernameScreen()));
    }) ,
    // Levels(title: ' When It Rains ', containercolor: Colors.deepOrange, image: 'assets/images/1.7.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const TenthScreen()));
    // }) ,
    // Levels(title: '  While Visiting The Ill', containercolor: Colors.pink, image: 'assets/images/1.8.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const EleventhScreen()));
    // }) ,
    // Levels(title: ' While Ascending or Descending', containercolor: Colors.yellow, image: 'assets/images/1.9.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const TwelfthScreen()));
    // }) ,
    
      ],
      
    ),
    bottomNavigationBar:const Homeicon(),
   
    );
  }
}