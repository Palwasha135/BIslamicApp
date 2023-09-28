
import 'package:flutter/material.dart';
import 'package:fyp/app/constant.dart';
import 'package:fyp/app/screens/about.dart';
//import 'package:fyp/app/screens/home.dart';
import 'package:fyp/app/screens/parentsguid.dart';
//import 'package:fyp/app/screens/secondscreen.dart';


class MyAppBar extends StatelessWidget implements PreferredSize {
  final Icon leading;
 //final  String leadingImage;
// final VoidCallback onPress;
//final String title;
//final Function( )onleadingtap;
final  List<Widget> actions;


  const  MyAppBar({Key? key,
  //required this.onleadingtap,
 this.leading=const Icon(Icons.arrow_back_ios_new_outlined),
  //required this.title,
 // required this.onPress,
  required this.actions,
  
  }):super(key:key);
@override
Size get preferredSize=>const Size.fromHeight(130);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      //leadingWidth:79.0,
      backgroundColor: kbgcolor,
leading:Transform.scale(
scaleY: 3.0,
scaleX: 3.0,
  child:   Padding(
  
    padding: const EdgeInsets.only(
      
      left:17,
      right: 5,
      
    ),
  //child:
  //Image.asset('assets/images/logo.jpg'),
    child: Icon(Icons.arrow_back_ios_new_outlined,size: 10,),
  //iconSize: 10.0,
//   onPressed: onleadingtap,
// ),
  
  ),
),


      //title: Center(child: Text(title,style: const TextStyle(fontSize: 30,fontWeight:FontWeight.bold))),
      actions:[
        //const Icon(Icons.more_vert,size: 33,),
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
      
      ]
    );
      
    
  }
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
  
 
}