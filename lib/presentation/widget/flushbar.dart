import 'dart:js';

import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

import '../styles/colors.dart';


class flushbar {
  String?Te;
  flushbar(this.Te);
   Future customFlush(BuildContext context)
   {
     return Flushbar(
       duration: Duration(milliseconds: 2000),
       backgroundColor:black,
       borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20) ),
       icon: Icon(Icons.access_alarm_outlined,color: Colors.white),
       messageText:Padding(
         padding: const EdgeInsets.all(8.0),
         child: Text(Te!,style: TextStyle(color: Colors.white),textAlign: TextAlign.left),
       ) ,
       flushbarPosition:FlushbarPosition.TOP,
     ).show(context);
   }

}