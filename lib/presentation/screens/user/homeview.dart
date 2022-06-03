import 'package:flutter/material.dart';

import 'package:magdsoft_flutter_structure/data/models/account_model.dart';
import 'package:magdsoft_flutter_structure/data/models/register_model.dart';

import '../../../data/local/cache_helper.dart';
import '../../styles/colors.dart';
import '../../widget/flushbar.dart';
import 'login.dart';
/*********************************responsive with mediaQuery*************************************************************/
class homeview extends StatefulWidget{
      account_Model a1;

   homeview({required this.a1});
  _homeviewState createState() => _homeviewState();

}
class _homeviewState  extends State<homeview>{

  @override
  Widget build(BuildContext context) {
      //var m1=CacheHelper.getDataFromSharedPreference(key:this.widget.a1.email);
    return Scaffold(
     appBar: AppBar(
       elevation: 20,
       centerTitle: true,
       title: Text("User Data",style: s3),
       backgroundColor: blueMagd,
     ),
      body: Padding(
        padding:  EdgeInsets.only(),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height*0.2,),
            Center(
            child:Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("Name: " + CacheHelper.getDataFromSharedPreference(key: 'name'),style: s4),
                  Text("Email: " + CacheHelper.getDataFromSharedPreference(key: 'email'),style: s4,),
                  Text("Phone: " + CacheHelper.getDataFromSharedPreference(key: 'phone'),style: s4,),
                  //Text("Name:" + m1.name),
                ],
              ),
            ),
          ),
            SizedBox(height: MediaQuery.of(context).size.height*0.4,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: MaterialButton(onPressed: (){
                    //I Tried to use the line below but it doesn't work properly , I understand the concept but it may be the syntax although it did not give me an error
                    /*appRouter!.onGenerateRoute( RouteSettings(
                                      name: 'login',arguments: {}));*/

                    flushbar fl=new flushbar("LoggedOut");
                    fl.customFlush(context).whenComplete(() => Navigator.push(context, MaterialPageRoute(builder: (context) => login())));


                  },

                    color: RedMagd,elevation: 17,
                    height: MediaQuery.of(context).size.height*0.1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5),),
                    child: Padding(
                      padding: EdgeInsets.only(left: MediaQuery.of(context).size.height/25,right:MediaQuery.of(context).size.height/25 ),
                      child: Text("LogOut",style:s2,),
                    ),),
                )
              ],)
          ],
        ),
      ),
    );
  }

}