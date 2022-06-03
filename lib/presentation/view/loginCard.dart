import 'package:flutter/material.dart';

import '../router/app_router.dart';
import '../styles/colors.dart';
import '../widget/customtextfield.dart';
import '../widget/loginbuttons.dart';
import '../widget/passfiled.dart';

class logincard extends StatelessWidget{
  String? email;
  String?password;
  AppRouter?appRouter;
  var emailCont = TextEditingController();
  var passCont = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return Expanded(
       flex: 6,
       child: Container(
         width: double.maxFinite,
         height:MediaQuery.of(context).size.height,
         decoration: BoxDecoration(
             color: whiteMagd,
             borderRadius: BorderRadius.only(topLeft: Radius.circular(50),topRight:Radius.circular(50) )
         ),
         child: Column(
           children: [
             SizedBox(height: MediaQuery.of(context).size.height/4),
             CustomTextFormField(
               validator: (value) {
                 if (!(value.contains('@')) ||
                     !(value.contains('.com')) ||
                     value.isEmpty) {
                   return "please enter correct email";
                 } else {
                   return null;
                 }
               },
               keyboardtype: TextInputType.emailAddress,
               onSaved: (value) {
                 email = value;
               },
               hint: 'Email', controller: emailCont,
             ),
             CustomTextFormFieldPass(
               validator: (value) {
                 if (value.isEmpty) {
                   return "please enter Password";
                 } else {
                   if (value.length < 3) {
                     return "must be more than 2 characters";
                   } else {
                     return null;
                   }
                 }
               },
               onSaved: (value) {
                 password = value;
               },
               hintText: 'Password',
               obscureText: true,
               keyboardType: TextInputType.visiblePassword,
               controller: passCont,
             ),
             SizedBox(height:MediaQuery.of(context).size.height/5),
             buttons(emailCont, passCont),

           ],
         ),

       ),
     );
  }

}