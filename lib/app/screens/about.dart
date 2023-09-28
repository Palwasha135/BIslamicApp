

import 'package:flutter/material.dart';
import 'package:fyp/app/components/appbar.dart';
class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return  const  Scaffold(
      appBar:  MyAppBar(
        actions:  [],
      ),
      body: Column(
        children:  [
          Center(child: Text('About',style: TextStyle(color: Colors.white, fontSize: 33),)),
          SizedBox(height:43),
          Text('The project is about an Android application that utilizes an engaging and interactive approach to teach children the fundamental tenets of Islam. The app covers topics such as daily supplications, the pillars of Islam, and the Seerah of the Prophet (peace be upon him.It is designed to promote Islamic education and values through a fun and interactive learning experience.'

,style: TextStyle(color: Colors.white, fontSize: 19),

),
        ],
      ),
    );
  }
}