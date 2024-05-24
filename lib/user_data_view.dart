import 'package:flutter/material.dart';
import 'package:user_data_api/user.dart';

class UserDataView extends StatelessWidget {
 UserDataView({Key? key, required this.userList}) : super(key: key);
 List<User> userList;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Info",style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: ListView.builder(
          itemCount: userList.length,
            itemBuilder: (context, index){
          return Container(
            height: 150,
            width: 300,
           // color: Colors.red,
            child: Column(
              children: [
                Card(child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(Icons.person),
                  ),
                  title: Text(userList[index].name.toString(),style: TextStyle(fontSize: 24),),
                  subtitle: Text(userList[index].email),
                  trailing: Text(userList[index].company!.name.toString(),style: TextStyle(color: Colors.blue,fontSize: 16),),
                ))
              ],
            ),
          );
        }),
      ),
    );
  }
}