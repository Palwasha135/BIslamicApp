
import 'package:flutter/material.dart';
//                                    theme coding
// import 'package:fyp/app/components/change_theme_button_widget.dart';
// import 'package:fyp/app/screens/mode.dart';

import 'package:fyp/app/constant.dart';

import 'package:fyp/app/screens/more_vert_icon/about.dart';
import 'package:fyp/app/screens/more_vert_icon/parentalguide.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  final IconButton? leading;
 //final  String leadingImage;
// final VoidCallback onPressed;
//final String title;
final VoidCallback onleadingtap;
final  List<Widget> actions;


  const  MyAppBar({Key? key,
  required this.onleadingtap,
this.leading,
  //required this.title,
//  required this.onPressed,
  required this.actions,
  
  }):super(key:key);
@override
Size get preferredSize=>const Size.fromHeight(130);
  @override
  Widget build(BuildContext context) {
    return AppBar(
     
      backgroundColor: kbgcolor,

    leading:GestureDetector(
      onTap:onleadingtap,
       child:const Padding(
         padding:EdgeInsets.only(top: 23.0),
         child: Icon(Icons.arrow_back_ios_new_outlined,size: 25,),
       )
       ),
  
      actions:[ 
  //                              theme coding        
        
    //const ChangeThemeButtonWidget(),
        
      PopupMenuButton(itemBuilder: (BuildContext context){
      return const [
      PopupMenuItem (
        value: 1,
        child: Text('About'),
        ),
        PopupMenuItem(
      value:2,
      child: Text('Parental Guide'),
        
        ),
        // PopupMenuItem(
        //   value:3,
        //   child: Text('theme'),
        
        //),
      ];
      
      },
      onSelected: (value) {
        if (value==1){
          //Navigator.push(context, MaterialPageRoute(builder: (context)=>const About()));
       Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const About()), (route) => route.isFirst
       );
        }
         else{
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const Parentsguide()), (route) => route.isFirst
       //Navigator.push(context,MaterialPageRoute(builder: (context)=>const Parentsguide()));
      );
      }
      },
      
      //    else if (value==2){
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>const Parentsguide()));
      //    }
       
      //    else{
      //      value==3;
      //    }
      //    Navigator.push(context,MaterialPageRoute(builder: (context)=>const Mode()));
      //       },
      ),
      
      ],
    );
      
    
  }
  
  @override
  // TODO: implement child
  Widget get child => throw UnimplementedError();
  
 
}