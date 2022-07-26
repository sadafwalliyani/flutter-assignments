
import 'package:http/http.dart'as http;
import 'dart:convert';

import 'package:practiceoftest/model/user_model.dart';

getUser()async{
  var response= await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
    var jsonData= jsonDecode(response.body);

  List<UserModel> users=[];
  for(var i in jsonData){
    UserModel user= UserModel(
      id: i[''], 
      name: i[''],
      username:i[''], 
      email: i[''],
      phone:i['']);
      users.add(user);
  }
  return users;
}