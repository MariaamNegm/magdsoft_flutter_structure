import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:magdsoft_flutter_structure/data/network/requests/register_request.dart';
import 'package:magdsoft_flutter_structure/presentation/screens/user/login.dart';
import 'package:magdsoft_flutter_structure/presentation/view/expandforregister.dart';
import 'package:magdsoft_flutter_structure/presentation/view/registerCard.dart';
import 'package:magdsoft_flutter_structure/presentation/widget/registerbuttons.dart';
import '../../styles/colors.dart';
import '../../../data/local/cache_helper.dart';
import '../../../data/models/register_model.dart';
import '../../router/app_router.dart';
import '../../widget/customtextfield.dart';
import '../../widget/flushbar.dart';
import '../../widget/passfiled.dart';
class  RegisterScreen extends StatefulWidget{
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}
class _RegisterScreenState extends State<RegisterScreen> {

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
              expandforregister(),
              registercard(),
            ],
          ),
        ),

      ),
    );
  }
}
