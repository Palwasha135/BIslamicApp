

// ignore_for_file: sort_child_properties_last


import'package:flutter/material.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';
import 'package:fyp/app/screens/eighthscreen.dart';
import 'package:fyp/app/screens/eleventhscreen.dart';
import 'package:fyp/app/screens/fifthscreen.dart';
import 'package:fyp/app/screens/fourthscreen.dart';
import 'package:fyp/app/screens/ninthscreen.dart';

//import 'package:fyp/app/screens/home.dart';
import 'package:fyp/app/screens/secondscreen.dart';

import 'package:fyp/app/components/level.dart';
import 'package:fyp/app/screens/seventhscreen.dart';
import 'package:fyp/app/screens/sixthscreen.dart';
import 'package:fyp/app/screens/tenthscreen.dart';
import 'package:fyp/app/screens/twelfthscreen.dart';
 
class ThirdScreen extends StatefulWidget {
  const ThirdScreen({super.key});

  @override
  State<ThirdScreen> createState() => _ThirdScreenState();
}

class _ThirdScreenState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
   
    return  Scaffold(
        appBar: MyAppBar(
          //title: 'B Islamic',
  
    onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
    },
    actions:  const [
      
    //  IconButton(onPressed: (){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=> FourthScreen()));
    //  }, icon:const Icon(Icons.next_plan_rounded),iconSize: 38,)
    ],
        ),
        body:GridView(gridDelegate:const  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 9,crossAxisSpacing: 19,),
      children: [
        
        Expanded(
          child: Levels(title: ' Upon Sneezing', containercolor: Colors.orange, image: 'assets/images/1.1.png', onPress: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> const FourthScreen()));
            }),
        ),
    Levels(title: ' When Feeling Afraid ', containercolor: Colors.red, image: 'assets/images/1.2.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const FifthScreen()));
    }) ,
      
      Levels(title: ' For Thanking Someone', containercolor: Colors.purple, image: 'assets/images/1.3.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SixthScreen()));
    }),
    Levels(title: ' For When Seeing Muslim Smiling ', containercolor: Colors.blueAccent, image: 'assets/images/1.4.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SeventhScreen()));
    }) ,
    Levels(title: ' For Increase Knowledge ', containercolor: Colors.blueAccent, image: 'assets/images/1.5.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const EightScreen()));
    }) ,Levels(title: ' For Forgiveness ', containercolor: Colors.cyanAccent, image: 'assets/images/1.6.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const NinthScreen()));
    }) ,
    Levels(title: ' When It Rains ', containercolor: Colors.deepOrange, image: 'assets/images/1.7.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TenthScreen()));
    }) ,
    Levels(title: '  While Visiting The Ill', containercolor: Colors.pink, image: 'assets/images/1.8.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const EleventhScreen()));
    }) ,
    Levels(title: ' While Ascending or Descending', containercolor: Colors.yellow, image: 'assets/images/1.9.png', onPress: (){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>const TwelfthScreen()));
    }) ,
    // Levels(title: 'Level 4', containercolor: Colors.brown, image: 'assets/images/secondlvl.png', onPress: (){
    // Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
    // }) ,
      ],
      
    ),
    bottomNavigationBar:const Homeicon(),
   
    );
        
        
        
//         Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: GridView(children: [
//              InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const FourthScreen()));
//               },
//               child:Container( 
                
//                 decoration:BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.amberAccent),
//                  child:Column(
                             
//                              children:const  [
//                              Expanded(child: Image(image: AssetImage('sonykidua.jpg'),),
//                              ),
//                              SizedBox(
//                               height: 35,
//                              ),
//                                Expanded(child: Text('Dua before sleeping',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
//                          ],
                              
//                          ),
                         
              
                         
//               ),
//             ),
//              InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//               },
//               child:Container( 
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
//              child:Column(
//                children:const  [
//                 Expanded(child: Image(image: AssetImage('images/wakingup.jpg'),fit: BoxFit.fitWidth,)),
//                 SizedBox(
//                               height: 35,
//                              ),
//                 Expanded(child: Text('Dua after wakingup',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
//                ],
//              ),
             

             
//               ),
//             ),
//              InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//               },
//               child:Container( 
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
//              child:Column(
//                children:const  [
//                 Expanded(child: Image(image: AssetImage('images/before.jpg'))),
//                 SizedBox(
//                               height: 35,
//                              ),
//                  Expanded(child: Text('Dua before Eating',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
//                ],
//              ),
//              //alignment:Alignment.bottomCenter,

             
//               ),
//             ),
//              InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//               },
//               child:Container( 
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink,),
//              child:Column(
//                children:const  [
//                 Expanded(child: Image(image: AssetImage('images/duringeating.jpg'))),
//                 SizedBox(
//                               height: 35,
//                              ),
//                  Expanded(child: Text('Dua During Eating',textAlign: TextAlign.center, style: TextStyle(fontSize: 15),)),
//                ],
//              ),
//              alignment:Alignment.bottomCenter,

             
//               ),
//             ),
//              InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//               },
//               child:Container( 
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
//              child:Column(
//                children:const [
//                   Expanded(child: Image(image: AssetImage('images/aftereating.jpg'))),
//                   SizedBox(
//                               height: 35,
//                              ),
//                   Expanded(child: Text('Dua after Eating',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
//                ],
//              ),
//              //alignment:Alignment.bottomCenter,

             
//               ),
//             ),
//             InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//               },
//               child:Container( 
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
//              child:Column(
//                children:const [
//                   Expanded(child: Padding(
//                     padding: EdgeInsets.only(top:13.0),
//                     child: Image(image: AssetImage('images/sneezing.jpg')),
//                   )),
//                   SizedBox(
//                               height: 35,
//                              ),
//                   Expanded(child: Text('Dua Upon Sneeze',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
//                ],
//              ),
              
//               ),
             
//              ),
// InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//               },
//               child:Container( 
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
//              child:Column(
//                children:const [
//                   Expanded(child: Padding(
//                     padding: EdgeInsets.only(top:13.0),
//                     child: Image(image: AssetImage('images/aftersneezing.jpg')),
//                   )),
//                   SizedBox(
//                               height: 35,
//                              ),
//                   Expanded(child: Text('Dua When Someone Sneezes',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
//                ],
//              ),
              
//               ),
//               ),
//               InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//               },
//               child:Container( 
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
//              child:Column(
//                children:const [
//                   Expanded(child: Padding(
//                     padding: EdgeInsets.only(top:13.0),
//                     child: Image(image: AssetImage('images/sneezing.jpg')),
//                   )),
//                   SizedBox(
//                               height: 35,
//                              ),
//                   Expanded(child: Text('Dua When You Sneeze',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
//                ],
//              ),
              
//               ),
//               ),
//               InkWell(
//               onTap: () {
//                 Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
//               },
//               child:Container( 
//                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.pink),
//              child:Column(
//                children:const [
//                   Expanded(child: Padding(
//                     padding: EdgeInsets.only(top:13.0),
//                     child: Image(image: AssetImage('images/sneezing.jpg')),
//                   )),
//                   SizedBox(
//                               height: 35,
//                              ),
//                   Expanded(child: Text('Dua When You Sneeze',textAlign: TextAlign.center,style: TextStyle(fontSize: 15),)),
//                ],
//              ),
              
//               ),
//               ),


//           ],
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 9,crossAxisSpacing: 9),
//           ),
//         )
          
         
    
    
//     );
  }
}