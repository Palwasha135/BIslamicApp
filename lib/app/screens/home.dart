// ignore_for_file: avoid_print
import 'package:flutter/material.dart';
//import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/button.dart';
import 'package:fyp/app/constant.dart';
import 'package:fyp/app/screens/about.dart';
import 'package:fyp/app/screens/parentsguid.dart';
import 'package:fyp/app/screens/pillar_screen.dart';
import 'package:fyp/app/screens/secondscreen.dart';


// void main(){

//   runApp(const HomeScreen());
// }
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kbgcolor,
        leadingWidth: 99,
        leading: Image.asset('assets/images/logo.png'),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context){
return const [
  PopupMenuItem (
    value: 1,
    child: Text('About')
    ),
    PopupMenuItem(
      value:2,
      child: Text('Parent Guide'),
    
    ),
    PopupMenuItem(
      value:3,
      child: Text('theme'),
    
    )
];

      },
      onSelected: (value) {
        if (value==1){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>const About()));
        }
   else if (value==2){
Navigator.push(context, MaterialPageRoute(builder: (context)=>const Parentsguide()));
   }
   
   else{
     value==3;
   }
   Navigator.push(context,MaterialPageRoute(builder: (context)=>const About()));
      },
      )
        ],
      ),
        
    //         appBar:MyAppBar(
    //           //title: 'B Islamic',
  
    // // onleadingtap: () {
    // //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
    // // },
    // actions:  [
      
    //  IconButton(onPressed: (){
    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
    //  }, icon:const Icon(Icons.dehaze_outlined),iconSize: 38,)
    // ],),
          // AppBar(
              
          //     backgroundColor:kbgcolor,
              
          // actions: [
          //   IconButton(
          //     icon: const Icon(Icons.dehaze_outlined),
          //     color:Colors.white,
          //   iconSize: 45,
          //     onPressed:(){
          //      Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
          //     }
          //     )
          //   ],
          //   leading:IconButton(icon: const Icon(Icons.dehaze_outlined),
          //   color: Colors.white,
          //   iconSize: 35,
          //   onPressed: () {
          //     print('tap2');
          //   }
          
          //   ),
          // title: const Center(child: Text('B Islamic', style: TextStyle(color: Colors.white, fontSize: 35),)),
          
        
        
        
        
          
          
        // //   child:ListView.builder(
        // //     itemCount: 1,
        // //     itemBuilder: ((context, index) {
        // //       return Container(
        // //         color: Colors.pinkAccent,
        // // //       child:const Padding(
        // // //         padding:  EdgeInsets.all(11),
        // //         child: Text(textAlign: TextAlign.center,'Pillar of Islam', style: TextStyle(color: Colors.white, fontSize: 23 ),),
              
        // //       );
            
        // //     }

        // //   ) ,
        //   )
       body:  Center(
            child:Expanded(
              child: Column(
                
                children:  [
                  const SizedBox(height:39),
                  Mybutton(title: 'Daily Duas',
                  assetImagePath: 'assets/images/dua.png',
                //assetImagePath1: null,
                  onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
                     },
                    btnColor: Colors.cyanAccent,
                     ),
                   Mybutton(title: 'Seerat e Nabi \n(S.A.W.W)',
                   assetImagePath: 'assets/images/Sunnah.png',
                   //assetImagePath1: null,
                   onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const SecondScreen()));
                                   },
                   btnColor: Colors.purple,
                                   ),
                   Mybutton(title: 'Pillars of Islam',
                   assetImagePath: 'assets/images/pillar.png',
                   //assetImagePath1: '',
                   onPress: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const PP()));
                  },
                  btnColor:Colors.deepOrange,
                  ),
                
                  
                
                       ],
                   
              ),
            ),
             
          ),
          
       
        );
      
      
   

  }
}











































