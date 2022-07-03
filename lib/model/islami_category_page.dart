import 'dart:convert';
/// getcategory : [{"id":63,"category_name":"Salah Accessories","category_slug_name":"salah-accessories","category_image":"upload/category/1734526493881657.webp","category_icon":"upload/category/1735770843726164.webp"},{"id":64,"category_name":"Modest Dress","category_slug_name":"modest-dress","category_image":"upload/category/1734526514764827.webp","category_icon":"upload/category/1735770780473529.webp"},{"id":65,"category_name":"Halal Cosmetics & Fragrance","category_slug_name":"halal-cosmetics-&-fragrance","category_image":"upload/category/1734526534950013.webp","category_icon":"upload/category/1735770734184091.webp"},{"id":68,"category_name":"Food","category_slug_name":"food","category_image":"upload/category/1734526553724772.webp","category_icon":"upload/category/1735770605647364.webp"},{"id":73,"category_name":"Decorative items","category_slug_name":"decorative-items","category_image":"upload/category/1734526573131726.webp","category_icon":"upload/category/1735770500357635.webp"}]

IslamiCategoryPage islamiCategoryPageFromJson(String str) => IslamiCategoryPage.fromJson(json.decode(str));
String islamiCategoryPageToJson(IslamiCategoryPage data) => json.encode(data.toJson());
class IslamiCategoryPage {
  IslamiCategoryPage({
      List<Getcategory>? getcategory,}){
    _getcategory = getcategory;
}

  IslamiCategoryPage.fromJson(dynamic json) {
    if (json['getcategory'] != null) {
      _getcategory = [];
      json['getcategory'].forEach((v) {
        _getcategory?.add(Getcategory.fromJson(v));
      });
    }
  }
  List<Getcategory>? _getcategory;
IslamiCategoryPage copyWith({  List<Getcategory>? getcategory,
}) => IslamiCategoryPage(  getcategory: getcategory ?? _getcategory,
);
  List<Getcategory>? get getcategory => _getcategory;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_getcategory != null) {
      map['getcategory'] = _getcategory?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : 63
/// category_name : "Salah Accessories"
/// category_slug_name : "salah-accessories"
/// category_image : "upload/category/1734526493881657.webp"
/// category_icon : "upload/category/1735770843726164.webp"

Getcategory getcategoryFromJson(String str) => Getcategory.fromJson(json.decode(str));
String getcategoryToJson(Getcategory data) => json.encode(data.toJson());
class Getcategory {
  Getcategory({
      int? id, 
      String? categoryName, 
      String? categorySlugName, 
      String? categoryImage, 
      String? categoryIcon,}){
    _id = id;
    _categoryName = categoryName;
    _categorySlugName = categorySlugName;
    _categoryImage = categoryImage;
    _categoryIcon = categoryIcon;
}

  Getcategory.fromJson(dynamic json) {
    _id = json['id'];
    _categoryName = json['category_name'];
    _categorySlugName = json['category_slug_name'];
    _categoryImage = json['category_image'];
    _categoryIcon = json['category_icon'];
  }
  int? _id;
  String? _categoryName;
  String? _categorySlugName;
  String? _categoryImage;
  String? _categoryIcon;
Getcategory copyWith({  int? id,
  String? categoryName,
  String? categorySlugName,
  String? categoryImage,
  String? categoryIcon,
}) => Getcategory(  id: id ?? _id,
  categoryName: categoryName ?? _categoryName,
  categorySlugName: categorySlugName ?? _categorySlugName,
  categoryImage: categoryImage ?? _categoryImage,
  categoryIcon: categoryIcon ?? _categoryIcon,
);
  int? get id => _id;
  String? get categoryName => _categoryName;
  String? get categorySlugName => _categorySlugName;
  String? get categoryImage => _categoryImage;
  String? get categoryIcon => _categoryIcon;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['category_name'] = _categoryName;
    map['category_slug_name'] = _categorySlugName;
    map['category_image'] = _categoryImage;
    map['category_icon'] = _categoryIcon;
    return map;
  }

}