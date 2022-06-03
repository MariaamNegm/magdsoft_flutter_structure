import 'package:flutter/material.dart';


import 'package:google_fonts/google_fonts.dart';

import '../styles/colors.dart';


class CustomTextFormField extends StatelessWidget {
  var validator;
  var keyboardtype;
  var onSaved;
  String? hint;
  var controller;
  CustomTextFormField({
    required this.validator,
    required this.keyboardtype,
    required this.onSaved,
    required this.controller,
    this.hint

  });


  @override
  Widget build(BuildContext context) {
    return Container(
        child: Padding(
          padding:EdgeInsets.all(MediaQuery.of(context).size.height/70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: MediaQuery.of(context).size.width/1.8,
                child: TextFormField(
                  textAlign: TextAlign.left,
                  validator: validator,
                  keyboardType: keyboardtype,
                  controller:controller ,
                  onSaved: onSaved,
                  decoration: InputDecoration(
                    fillColor: FillGrey,
                    filled: true,
                    hintText: hint,
                    hintStyle: s1,
                    //contentPadding: EdgeInsets.all(20.0),
                    //when you open the app to the login screen and click on the text field
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Bordercolor, width: 1.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    //when there is no action on the textfield
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color:Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    //when you finished writing in the text field and start in the next one
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white, width: 2.0),
                      borderRadius: BorderRadius.circular(15.0),
                    ),

                  ),
                ),
              ),
            ],
          ),
        ),

    );
  }
}