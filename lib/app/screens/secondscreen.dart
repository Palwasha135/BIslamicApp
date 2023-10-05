//import 'dart:ffi
import 'package:flutter/material.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';
//import 'package:fyp/app/components/homeicon.dart';
import 'package:fyp/app/components/level.dart';
import 'package:fyp/app/screens/duasmainScreen/level2mainScreen.dart';
import 'package:fyp/app/screens/duasmainScreen/level3mainScreen.dart';

import 'package:fyp/app/screens/home.dart';
//import 'package:fyp/app/screens/home.dart';
import 'package:fyp/app/screens/duasmainScreen/level1mainScreen.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
   appBar: MyAppBar(
          //title: 'B Islamic',
  
    onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
    },
    actions:  const [
      
    //  IconButton(onPressed: (){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=> FourthScreen()));
    //  }, icon:const Icon(Icons.next_plan_rounded),iconSize: 38,)
    ],
   ),

    body:Padding(
      padding: const EdgeInsets.only(
        top:29,
      ),
      child: GridView(gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 9,crossAxisSpacing: 19,),
        children: [
          
          Expanded(
            child: Levels(title: 'Level 1', containercolor: Colors.orange, image: 'assets/images/secondlvl.png', onPress: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>const ThirdScreen()));
              }),
          ),
      Levels(title: 'Level 2', containercolor: Colors.red, image: 'assets/images/l2.png', onPress: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=> const Level2Screen()));
      }) ,
        
        Levels(title: 'Level 3', containercolor: Colors.purple, image: 'assets/images/l3.png', onPress: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Level3Screen()));
      }),
      Levels(title: 'Level 4', containercolor: Colors.blueAccent, image: 'assets/images/l4.png', onPress: (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
      }) 
        ],
        
      ),
    ),
   bottomNavigationBar:const Homeicon(),
    
    );

  }
}

  


// // ignore_for_file: unused_label

// import 'dart:convert';

// import 'package:flutter/material.dart';
// void main(){
// runApp( MaterialApp(
// home:Scaffold(
//   backgroundColor:const Color.fromARGB(255, 209, 113, 145),
//     appBar:AppBar(
//     title:const Text('B ISLAMIC'),
//     centerTitle: true,
  
//     backgroundColor: Colors.pinkAccent,
//      ),
     
//   body:Column(
//     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: [
//     const Text('B ISLAMIC',style:TextStyle(fontSize: 12)),
//     Center(
//       child:Container(
        
//          child: const Image(
//         image:AssetImage('kid.png'),
//        height:  500,
//        width: 900,
//        fit:BoxFit.fill,
      
//         ),
        
//         )
      
//     ),
//     // ignore: prefer_const_constructors
//    Icon(Icons.play_arrow,
//    size:60,
//    color: Colors.amberAccent,
//    ),
  
//   ],
//   // Center(
//   //   child: Container(
//   //     // child:const Text('B ISLAMIC'),
//   //       child:Image(
//   //       image:const AssetImage('kid.png'), 
        
//   //       height: 100,
       
        
//   //       ),
      
//   //   ),
    
//   ),
 
//   )
  

      
//         ),
//     );
//}