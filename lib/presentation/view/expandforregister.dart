import 'package:flutter/cupertino.dart';

import '../styles/colors.dart';

class expandforregister extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return Expanded(
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
  );
  }

}