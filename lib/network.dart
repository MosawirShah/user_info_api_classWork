import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:user_data_api/user.dart';

class Network{
List<User> userList = [];
Future<List<User>> getUserApiData() async{
   final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users'));
   var jsonData = jsonDecode(response.body);
   print(jsonData);
   if(response.statusCode == 200){
    for(Map<String, dynamic> mapObject in jsonData){
       userList.add(User.fromJson(mapObject));
    }
    return userList;
   }else{
      return userList;
   }

}
}