// //import 'dart:ui';

// //import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:flutter/src/widgets/container.dart';
// //import 'package:flutter/src/widgets/framework.dart';

// class DuaScreen extends StatelessWidget {
//   final String title;
//   final String assetImagePath, assetImagePath2;
//   final String text;
//   const DuaScreen({Key? key,
//   required this.title,
//   required this.text,
//   required this.assetImagePath,
//   required this.assetImagePath2,
//   }):super(key:key);


//   @override
//   Widget build(BuildContext context) {
//     return Column(
      
//       children: [
//       const SizedBox(height: 19),
//     Text(title,style: const TextStyle(fontSize: 37,fontWeight: FontWeight.bold,color: Colors.white),),
//     const SizedBox(height: 19),
//     Expanded(
//       flex:2,child: Image.asset(assetImagePath, alignment: Alignment.center,)),
//     const SizedBox(height: 19),
//     Expanded(child: Image.asset(assetImagePath2,alignment: Alignment.center ,)),
//    const SizedBox(height: 19),
//     Padding(
//       padding: const EdgeInsets.only(
//         left: 19,
//       ),
//       child: Text(text,style:const TextStyle(fontSize: 23,color: Colors.white),),
//     )
    
//     ],);    

//   }
// }
import 'package:flutter/material.dart';
import 'package:fyp/app/components/homeicon.dart';

// import 'package:flutter/material.dart';
// import 'package:fyp/app/components/homeicon.dart';

class DuaScreen extends StatelessWidget {
  final String assetImagePath;
  final Homeicon iconData;
  final double containerHeight;
  final double iconSize;

  const DuaScreen({
    required this.assetImagePath,
    required this.iconData,
    this.containerHeight = 700.0,
    this.iconSize = 44.0,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: containerHeight,
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: Stack(
        children: [
          Expanded(
            child: Image.asset(
              assetImagePath,
              fit: BoxFit.fill,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          
          const Align(
            alignment: Alignment.bottomCenter,
            child: Homeicon(),
            
          ),
         
        // Padding(
        //   padding: const EdgeInsets.only(top: 10),
        //   child: const Align(
        //     alignment: Alignment.bottomCenter,
        //     child:   Homeicon()),
        // ),
        ],
      ),
    );
  }
}

