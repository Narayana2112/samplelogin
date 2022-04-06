import 'dart:convert';
import 'package:http/http.dart';
import '../../../Utills/ApiCofig.dart';
import '../Model/userloginmodel.dart';
import 'dart:io';
Future Sendlogin(var username,var password) async {
  Map data = {
    'username': username,
    'password': password,
  };
  var bodyuser = json.encode(data);
  var response = await post(Uri.parse(APISConfig().Base_URL+"authenticate/login"),body:bodyuser);
  print("jsinnb12456121${response.statusCode}");
  print("jsinnb121211222${response.body}");
  if(response.statusCode==200) {
    print("sassasdasda");
    var decodess = jsonDecode(response.body);
    var jsonString = decodess;
    var urlResponse = UserPersonaModel.fromJson(jsonString);
    return urlResponse;
  }
}