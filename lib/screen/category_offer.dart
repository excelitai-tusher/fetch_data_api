import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:shimmer/shimmer.dart';
import '../model/islami_category_page.dart';
import '../service/http_homepage_category.dart';

class Category_offer extends StatefulWidget {
  const Category_offer({Key? key}) : super(key: key);

  @override
  State<Category_offer> createState() => _Category_offerState();
}

class _Category_offerState extends State<Category_offer> {
  final CarouselSlider? _carouselSlider =
      CarouselController() as CarouselSlider?;
  @override
  void initState() {
    super.initState();
    getData();
  }

  late List<Getcategory> listCategory;
  getData() async {
    final list = await getCategory();
    setState(() {
      listCategory = list!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return listCategory != null
        ? Column(
            children: [
              Center(
                child: Text(
                  "Categories",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * .2,
                width: MediaQuery.of(context).size.width,
                child: CarouselSlider.builder(
                  itemCount: listCategory.length,
                  options: CarouselOptions(
                    viewportFraction: .25,
                    reverse: false,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(microseconds: 3000),
                    height: MediaQuery.of(context).size.height,
                  ),
                  //carouselController: _carouselSlider,
                  itemBuilder: (BuildContext context, int item, int pageView) {
                    listCategory[item];
                    return GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(
                        //     builder: (context) => ));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * .14,
                            width: 90,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              image: DecorationImage(
                                image: listCategory![item].categoryImage != null
                                    ? NetworkImage(
                                        "http://bppshops.com/${listCategory[item].categoryImage}")
                                    : NetworkImage(
                                        'https://st3.depositphotos.com/23594922/31822/v/600/depositphotos_318221368-stock-illustration-missing-picture-page-for-website.jpg',
                                      ),
                                fit: BoxFit.cover,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          SizedBox(
                            width: 90,
                            child: Text(
                              "${listCategory[item].categoryName}",
                              style: TextStyle(
                                color: Colors.black,
                                overflow: TextOverflow.ellipsis,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            ],
          )
        : Column(
            children: [],
          );
  }
}
