import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/data/local/cache_helper.dart';
import 'package:magdsoft_flutter_structure/data/models/account_model.dart';
import 'package:magdsoft_flutter_structure/data/models/register_model.dart';
import 'package:magdsoft_flutter_structure/data/network/requests/login_request.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/homeview.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/registerscreen.dart';
import 'package:dio/dio.dart';
import 'package:magdsoft_flutter_structure/constants/end_points.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:another_flushbar/flushbar_route.dart';
import 'package:magdsoft_flutter_structure/presentation/view/loginCard.dart';
import 'package:magdsoft_flutter_structure/presentation/view/stackforlogin.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/loginbuttons.dart';
import '../../styles/colors.dart';
import '../../router/app_router.dart';
import '../../widget/customtextfield.dart';
import '../../widget/flushbar.dart';
import '../../widget/passfiled.dart';
/********DoneWithMediaQuery********/
class login extends StatefulWidget{
  @override

  _loginState createState() => _loginState();
}
class _loginState extends State<login> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          color: blueMagd,
          child: ListView(
            children: [
              expandforlogin(),
              logincard(),
            ],
          ),
        ),

      ),
    );
  }
}

