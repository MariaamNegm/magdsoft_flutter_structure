import 'package:flutter/cupertino.dart';

import '../router/app_router.dart';
import '../styles/colors.dart';
import '../widget/customtextfield.dart';
import '../widget/passfiled.dart';
import '../widget/registerbuttons.dart';

class registercard extends StatelessWidget{
  String? email;
  String?password;
  String?Fullname;
  String?phone;
  String?Confirmpassword;
  AppRouter?appRouter;
  var emailCont = TextEditingController();
  var phonecont = TextEditingController();
  var namecont = TextEditingController();
  var passCont = TextEditingController();
  var confirmCont = TextEditingController();
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
            SizedBox(height: MediaQuery.of(context).size.height/14),
            CustomTextFormField(
              validator: (value) {
                if (value.isEmpty) {
                  return "please enter correct  name";
                } else {
                  return null;
                }
              },
              keyboardtype: TextInputType.name,
              onSaved: (value) {
                Fullname = value;
              },
              hint: 'Full_Name', controller: namecont,
            ),
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
            CustomTextFormField(
              validator: (value) {
                if (value.isEmpty|| value.length<11 ||value.length>15) {
                  return "phone number must be more than 11 and less than 15";
                } else {
                  return null;
                }
              },
              keyboardtype: TextInputType.phone,
              onSaved: (value) {
                phone = value;
              },
              hint: 'Phone', controller: phonecont,
            ),
            CustomTextFormFieldPass(
              validator: (value) {
                if (value.isEmpty) {
                  return "please enter Password";
                } else {
                  if (value.length <=6) {
                    return "must be more than 6 characters";
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
              keyboardType: TextInputType.visiblePassword,controller: passCont,
            ),
            CustomTextFormFieldPass(
              validator: (value) {
                if (value.isEmpty) {
                  return "please enter password";
                } else {
                  if (value.length <=6) {
                    return "must be more than 6 characters";
                  } else {
                    return null;
                  }
                }
              },
              onSaved: (value) {
                Confirmpassword = value;
              },
              hintText: 'Confirm_Password',
              obscureText: true,
              keyboardType: TextInputType.visiblePassword,controller: confirmCont,
            ),
            SizedBox(height:MediaQuery.of(context).size.height/8),
            registerbuttons(emailCont, passCont, phonecont, namecont),

          ],
        ),

      ),
    );
  }

}