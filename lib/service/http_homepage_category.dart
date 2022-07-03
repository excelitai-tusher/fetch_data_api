import 'dart:convert';
import '../model/islami_category_page.dart';
import 'package:http/http.dart' as http;

Future<List<Getcategory>?> getCategory() async{
  final response = await http.get(Uri.parse("https://bppshops.com/api/bs/category_view"));
  if(response.statusCode == 200){
    final json = jsonDecode(response.body);
    IslamiCategoryPage islamiCategory = IslamiCategoryPage.fromJson(json);
    return islamiCategory.getcategory;
  }else{
    throw Exception(
      "Failed data",
    );
  }
}