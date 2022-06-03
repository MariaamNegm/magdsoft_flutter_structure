import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import '../styles/colors.dart';




class CustomTextFormFieldPass extends StatefulWidget {
  final String? hintText;
  var validator;
  var onSaved;
  // final bool isPassword
  var keyboardType;
  final String? helperText;
  final String initialValue;
  var onEditingComplete;
  var textInputAction;
  //initially password is obscure
  var controller;
  bool obscureText;

  CustomTextFormFieldPass(
      {this.hintText,
        this.validator,
        this.onSaved,
        this.keyboardType,
        this.helperText,
        this.initialValue = "",
        this.onEditingComplete,
        this.textInputAction,
        this.controller,
        this.obscureText = true});

  @override
  _CustomTextFormFieldPassState createState() =>
      _CustomTextFormFieldPassState();
}

class _CustomTextFormFieldPassState extends State<CustomTextFormFieldPass> {
  //to show and not show the password
  void _toggle() {
    setState(() {
      widget.obscureText = !widget.obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding:  EdgeInsets.all(MediaQuery.of(context).size.height/70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width/1.8,
              child: TextFormField(
                textAlign: TextAlign.left,
                validator: widget.validator,
                controller: widget.controller,
                keyboardType: TextInputType.visiblePassword,
                onSaved: widget.onSaved,
                obscureText: widget.obscureText,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                 icon: IconButton(
                   onPressed: () {
                     setState(() {
                       widget.obscureText = !widget.obscureText;
                     });
                   },
                   icon: widget.obscureText
                       ? const Icon(Icons.visibility_off,color: FontColor)
                       : const Icon(Icons.visibility,color: FontColor),
                 ),
                  isDense: true,
                  fillColor:FillGrey,
                  filled: true,
                  hintText: widget.hintText,
                  hintStyle:  s1,
                  contentPadding: EdgeInsets.all(20.0),
                  //when you open the app to the login screen and click on the text field
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Bordercolor, width: 1.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  //when there is no action on the textfield
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.white, width: 2.0),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  //when you finished writing in the text field and start in the next one
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color:Colors.white, width: 2.0),
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