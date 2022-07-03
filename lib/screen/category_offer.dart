import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../model/islami_category_page.dart';
import '../service/http_homepage_category.dart';
class Category_offer extends StatefulWidget {
  const Category_offer({Key? key}) : super(key: key);

  @override
  State<Category_offer> createState() => _Category_offerState();
}

class _Category_offerState extends State<Category_offer> {
  final CarouselSlider? _carouselSlider = CarouselController() as CarouselSlider?;
  @override
  void initState(){
    super.initState();
    getData();
  }

  late List<Getcategory> listCategory;
  getData()async{
    final list = await getCategory();
    setState((){
      listCategory = list!;
    });

  }


  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
