import 'package:dio/dio.dart';

import '../../../constants/end_points.dart';
import '../../models/account_model.dart';
import '../../models/register_model.dart';

class Register_req{
  Future< register_Model?> Register_in(String email,String Password,String phone,String name)async{
    final url=baseURL;
    if(!email.contains("@")||!email.contains(".com")||Password.length<6)
    {
      return null;
    }
    final data ={"email":email,"password":Password,"phone":phone,"name":name};
    final dio=Dio();
    Response response;
    response=await dio.post(url+'register',data: data);
    if(response.data["status"]!=214 )
    {
      return new register_Model(email: email, passoword:Password, phone:phone, name:name );
    }
    else
    {
      return  null;
    }


  }
}