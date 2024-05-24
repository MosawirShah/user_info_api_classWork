import 'package:flutter/material.dart';
import 'package:user_data_api/network.dart';
import 'package:user_data_api/user.dart';
import 'package:user_data_api/user_data_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {

  Network network = Network();
  List<User>? userList;
  @override
  void initState() {
   gettingUserData();
   Future.delayed(Duration(seconds: 3), (){
     Navigator.of(context).push(MaterialPageRoute(builder: (context)=> UserDataView(userList: userList!,)));
   });
    // TODO: implement initState
    super.initState();
  }
  gettingUserData()async{
    userList = await network.getUserApiData();
  }
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.person, size: 120,),
            SizedBox(height: 20,),
            Text("User Info", style: TextStyle(fontSize: 30),),
          ],
        ),
      ),
    );
  }
}
