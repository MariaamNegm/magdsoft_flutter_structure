import 'package:flutter/material.dart';

import '../../data/local/cache_helper.dart';
import '../../data/models/register_model.dart';
import '../../data/network/requests/register_request.dart';
import '../screens/user/login.dart';
import '../screens/user/registerscreen.dart';
import '../styles/colors.dart';
import 'flushbar.dart';

class registerbuttons extends StatelessWidget{
  var emailCont = TextEditingController();
  var phonecont = TextEditingController();
  var namecont = TextEditingController();
  var passCont = TextEditingController();
  var confirmCont = TextEditingController();
  Register_req rq1=new Register_req();
  registerbuttons(this.emailCont,this.passCont,this.phonecont,this.namecont);
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(right: MediaQuery.of(context).size.width/300),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            MaterialButton(onPressed: () async {
              //I Tried to use the line below but it doesn't work properly , I understand the concept but it may be the syntax although it did not give me an error
              /*appRouter!.onGenerateRoute( RouteSettings(
                                      name: 'login',arguments: {}));*/

              flushbar fl=new flushbar("To LogIn Page And Try Again");
              fl.customFlush(context).whenComplete(() => Navigator.push(context, MaterialPageRoute(builder: (context) => login())));


            },

              color: blueMagd,elevation: 10,
              height: MediaQuery.of(context).size.height/8,
              minWidth: 180,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
              child: Padding(
                padding: EdgeInsets.all(MediaQuery.of(context).size.height/56),
                child: Text("Login",style:s2,),
              ),),
            SizedBox( width: 60),
            MaterialButton(onPressed: () async {
              //I Tried to use the line below but it doesn't work properly , I understand the concept but it may be the syntax although it did not give me an error
              /*appRouter!.onGenerateRoute( RouteSettings(
                                      name: 'login',arguments: {}));*/
              register_Model? a2=  await rq1.Register_in(emailCont.text, passCont.text,phonecont.text,namecont.text) ;
              if(a2!=null)
              {

                CacheHelper.saveDataSharedPreference(key:'name' , value:a2.name);
                CacheHelper.saveDataSharedPreference(key:'phone' , value:a2.phone);
                CacheHelper.saveDataSharedPreference(key:'email' , value:a2.email);
                flushbar fl=new flushbar("Account Added Successfully");
                fl.customFlush(context).whenComplete(() =>  Navigator.push(context, MaterialPageRoute(builder: (context) => login())));

              }
              else
              {


                flushbar fl=new flushbar("Either Phone Or Password is invalid ,Please Try Again");
                fl.customFlush(context).whenComplete(() =>Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterScreen())) );





              }



            },
              color: blueMagd,elevation: 10,
              height: MediaQuery.of(context).size.height/8,
              minWidth: 180,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
              child: Padding(
                padding:EdgeInsets.all(MediaQuery.of(context).size.height/56),
                child: Text("Register",style:s2,),
              ),),
          ],
        ),
      ),
    );
  }

}