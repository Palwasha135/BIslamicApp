import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fyp/app/components/appbar.dart';
import 'package:fyp/app/components/pillerscompo.dart';
import 'package:fyp/app/screens/Fasting.dart';
import 'package:fyp/app/screens/Hajj.dart';
import 'package:fyp/app/screens/Salah.dart';
import 'package:fyp/app/screens/Tauheed.dart';
import 'package:fyp/app/screens/Zakat.dart';


// void main()
// {

//   runApp(const PP());
// }
class PP extends StatelessWidget {
  const PP({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const MyAppBar(
        actions:[],
      ),
      body: SingleChildScrollView(
         child:   Padding(
           padding: const EdgeInsets.only(
          top:29.0),
           child: Column(
            
              children:   [
                 GestureDetector(
                   child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                    children:  [
                         GestureDetector(onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Tauheedscreen()));
                          },
                           child: const Pillar(
                                                 // onTap: () {
                                                 //   Navigator.push(context, MaterialPageRoute(builder: (context)=>PP()));
                                                 // },
                                  fcontainerclr:Colors.brown,
                                             firstheight: 130,
                                             firstwidth: 100, 
                                             scontainerclr: Colors.white,
                                             secondheight: 100,
                                             secondwidth: 70,
                                             tcontainerclr:Colors.green ,
                                             tecondheight:55 ,
                                             tecondwidth: 55,
                                             imagepath:'assets/images/Tauheed.png', 
                                  text: 'Tauheed',
                                 
                                  ),
                         ),
                            SizedBox(width: 100,),
                        GestureDetector(
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Salahscreen()));
                          },
                          child: const Pillar(
                            // onTap: () {
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>PP()));
                            // },
                                   fcontainerclr:Colors.brown,
                                             firstheight: 130,
                                             firstwidth: 100, 
                                             scontainerclr: Colors.white,
                                             secondheight: 100,
                                             secondwidth: 70,
                                             tcontainerclr:Colors.green ,
                                             tecondheight:55 ,
                                             tecondwidth: 55,
                                             imagepath:'assets/images/Salah.png', 
                                   text: 'Salah',
                                   ),
                        ),
                        
                    ],
                                 
                                ),
                 ),
               SizedBox(height: 17,),
              Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children:  [
                GestureDetector(
                  onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Zakatscreen()));
                          },
                  child: Pillar(
                    // onTap: () {
                    //         Navigator.push(context, MaterialPageRoute(builder: (context)=>PP()));
                    //       },
                           fcontainerclr:Colors.grey,
                   firstheight: 130,
                   firstwidth: 100, 
                   scontainerclr: Colors.white,
                   secondheight: 100,
                   secondwidth: 70,
                   tcontainerclr:Colors.green ,
                   tecondheight:55 ,
                   tecondwidth: 55,
                   imagepath:'assets/images/Zakat.png', 
                           text: 'Zakat',
                           ),
                ),
              ],),
             
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     GestureDetector(
                      onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Hajjscreen()));
                          },
                       child: Pillar(
                        
                                fcontainerclr:Colors.brown,
                       firstheight: 130,
                       firstwidth: 100, 
                       scontainerclr: Colors.white,
                       secondheight: 100,
                       secondwidth: 70,
                       tcontainerclr:Colors.green ,
                       tecondheight:55 ,
                       tecondwidth: 55,
                       imagepath:'assets/images/Hajj.png', 
                                text: 'Hajj',
                                ),
                     ),
           const SizedBox(width: 100,),
                      GestureDetector(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Hajjscreen()));
                          },
                        child: GestureDetector(
                          onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Fastingscreen()));
                          },
                          child: Pillar(
                            // onTap: () {
                            //   Navigator.push(context, MaterialPageRoute(builder: (context)=>PP()));
                            // },
                                   fcontainerclr:Colors.brown,
                                             firstheight: 130,
                                             firstwidth: 100, 
                                             scontainerclr: Colors.white,
                                             secondheight: 100,
                                             secondwidth: 70,
                                             tcontainerclr:Colors.green ,
                                             tecondheight:55 ,
                                             tecondwidth: 55,
                                             imagepath:'assets/images/Fasting.jpg', 
                                   text: 'Fasting',
                                   ),
                        ),
                      ),
                      
                  ],
                
               ),
              
              ],
            ),
         ),
       ),
      
      );
  
  }
}