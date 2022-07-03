import 'dart:convert';
import 'package:test_data/screen/store_home_page.dart';
import 'package:http/http.dart' as http;

class UserData {
  int? userId;
  int? id;
  String? title;

  UserData({this.userId, this.id, this.title});

  UserData.fromJson(Map<String, dynamic> json) {
    userId = json['userId'];
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['userId'] = this.userId;
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }
}

  Future<UserData> getUsers()async{
    final response = await http.get(Uri.parse("https://jsonplaceholder.typicode.com/albums/1"));
    if (response.statusCode == 200){
     // print(response.body);
      return UserData.fromJson(jsonDecode(response.body));
    }else {
      throw Exception("Failed to load post");
 }

}