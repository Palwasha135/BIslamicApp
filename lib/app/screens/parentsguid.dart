

import 'package:flutter/material.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/homeicon.dart';
import 'package:fyp/app/screens/home.dart';
class Parentsguide extends StatelessWidget {
  const Parentsguide({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      appBar:  MyAppBar(
        onleadingtap: () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomeScreen()));
    },
        actions: const  [],
      ),
  
         body: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('PARENTS GUIDE',textAlign:TextAlign.center,style:TextStyle(color: Colors.white,fontSize: 23)),
              ),
              Container(
                height: 200,
              
                decoration:const  BoxDecoration(
                  color: Colors.orange,
                      borderRadius:BorderRadius.all(Radius.circular(20),
                      ),
                        ),
              child:const  Padding(
                padding:  EdgeInsets.only(
              top:25,
              left:13,
              right: 10,
              bottom: 10,
                ),
                child:  Text('DUAS LEVELS\n \nAs your child starts the Duas levels, take the opportunity to explain the significance of supplication (dua) in Islam. Encourage them to learn and recite these beautiful prayers.Encourage your child to make these duas a part of their daily routine.',textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 19)),
              )
              
              
              ),
              SizedBox( height:49),
              Container(height: 200,
              
                decoration:const  BoxDecoration(
                  color: Colors.red,
                      borderRadius:BorderRadius.all(Radius.circular(20),
                      ),
                        ),
              child:const  Padding(
                padding:  EdgeInsets.only(
              top:25,
              left:13,
              right: 10,
                ),
                child:  Text('SEERAT-E-NABI (S.A.W.W)\n\n Encourage your children to actively engage with the lessons about Prophet Muhammad (S.A.W) in our app, fostering a love for learning about his life.',textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 19)),
              ),
            
              
              ),
              const SizedBox( height:49),
              Container(height: 200,
             // width: 335,
               decoration:const  BoxDecoration(
                  color: Colors.purple,
                      borderRadius:BorderRadius.all(Radius.circular(30),
                      ),
                        ),
              child:const  Padding(
                padding:  EdgeInsets.only(
              top:25,
              // left:13,
              // right: 10,
                ),
                child:  Text('PILLAR OF ISLAM\n\nIn the Pillars of Islam section, your child will explore the fundamental principles of our faith. Explain the significance of each pillar and how it shapes a Muslim`s life.',textAlign: TextAlign.center,style: TextStyle(color: Colors.white, fontSize: 19)),
              )
              
              
              ),
            ],
          ),
        
        //],
      //),
      bottomNavigationBar: const Homeicon(),
    );
  }
}