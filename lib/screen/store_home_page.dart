import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'api_call.dart';

class MyApp1 extends StatefulWidget {
  const MyApp1({Key? key}) : super(key: key);

  @override
  State<MyApp1> createState() => _MyApp1State();
}

class _MyApp1State extends State<MyApp1> {
  late Future<UserData> users;

  @override
  void initState() {
    super.initState();
    users = getUsers();
  }
  // static getUsers() {
  //   // TODO: implement getUsers
  //   throw UnimplementedError();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<UserData>(
        future: users,
        builder: (context, snapShot) {
          //print(snapShot.data);
          if (snapShot.hasData) {
            final user = snapShot.data!;
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(user.id!.toString()),
                Text(user.title!),
                // Text(user.phone!),
              ],
            );
          } else if (snapShot.hasData) {
            return Text(snapShot.error.toString());
          } else {
            return CircularProgressIndicator();
          }
        },
      )),
    );
  }
}
