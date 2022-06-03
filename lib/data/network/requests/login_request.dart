import 'dart:js';
import 'dart:ui';

import 'package:another_flushbar/flushbar.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


import '../../../constants/end_points.dart';
import '../../../presentation/widget/flushbar.dart';
import '../../models/account_model.dart';

class login_req{
  Future<account_Model?> log_in(String email,String Password)async{
    final url=baseURL;
    if(!email.contains("@")||!email.contains(".com")||Password.length<6)
      {
         return null;
      }
    final data ={"email":email,"password":Password};
    final dio=Dio();
    Response response;
    response=await dio.post(url+'login',data: data);
    if(response.data["status"]!=404)
    {

      return new account_Model(email: email, passoword:Password );
    }
    else
    {
      return  null;
    }


  }
}