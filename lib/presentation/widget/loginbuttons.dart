import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../data/models/account_model.dart';
import '../../data/network/requests/login_request.dart';
import '../screens/user/homeview.dart';
import '../screens/user/registerscreen.dart';
import '../styles/colors.dart';
import 'flushbar.dart';

class buttons extends StatelessWidget{
  var emailCont = TextEditingController();
  var passCont = TextEditingController();
  login_req r1 = new login_req();
  buttons(this.emailCont,this.passCont);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding:  EdgeInsets.only(right: MediaQuery.of(context).size.width/300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(onPressed: () async {
              //I Tried to use the line below but it doesn't work properly , I understand the concept but it may be the syntax although it did not give me an error
              /*appRouter!.onGenerateRoute( RouteSettings(
                                      name: 'login',arguments: {}));*/
              account_Model? a2=  await r1.log_in(emailCont.text, passCont.text) ;
              if(a2!=null)
              {

                flushbar fl=new flushbar("LoggedIn Successfully");
                fl.customFlush(context).whenComplete(() => Navigator.push(context, MaterialPageRoute(builder: (context) => homeview(a1: a2),)));

              }

              else
              {

                flushbar fl=new flushbar("No User Found You Need to Register First");
                fl.customFlush(context).whenComplete(() => Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen(),)));


              }



            },
              color: blueMagd,elevation: 10,
              height: MediaQuery.of(context).size.height/8,
              minWidth: 180,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
              child: Padding(
                padding:EdgeInsets.all(MediaQuery.of(context).size.height/56),
                child: Text("Login",style:s2,),
              ),),
            SizedBox(width: 60),
            MaterialButton(onPressed: (){
              //I Tried to use the line below but it doesn't work properly , I understand the concept but it may be the syntax although it did not give me an error
              /*appRouter!.onGenerateRoute( RouteSettings(
                                      name: 'login',arguments: {}));*/
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  RegisterScreen(),));
            },
              color:blueMagd,elevation: 10,
              height: MediaQuery.of(context).size.height/8,
              minWidth: 180,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
              child: Padding(
                padding:EdgeInsets.all( MediaQuery.of(context).size.height/56),
                child: Text("Register",style:s2,),
              ),),
          ],
        ),
      ),
    );
  }

}