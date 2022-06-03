import 'package:flutter/material.dart';

import '../styles/colors.dart';

class expandforlogin extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
     return  Stack(
       children: [
         Expanded(
           flex: 4,
           child: Container(
             width: double.maxFinite,
             height:MediaQuery.of(context).size.height/3,
             decoration: BoxDecoration(
                 color: blueMagd,
                 image: DecorationImage(
                     image: AssetImage("images/logo.png")
                 )
             ),
           ),
         ),
         MaterialButton(
           onPressed: () {  },
           height:30 ,
           minWidth:70 ,
           elevation:20,
           child: Padding(
             padding: const EdgeInsets.all(16.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Container(
                   height:30,
                   width: 70,
                   decoration: BoxDecoration(
                       color: whiteMagd,
                       borderRadius: BorderRadius.all(Radius.circular(10))
                   ),
                   child: Padding(
                     padding:EdgeInsets.only(right:20,top:4),
                     child: Text("عربى",style: s5),
                   ),
                 )
               ],
             ),
           ),
         ),
       ],
     );
  }

}