
import 'package:book_app/utils/components/category_list_view.dart';
import 'package:book_app/utils/components/for_you_list_view.dart';
import 'package:book_app/utils/components/popular_list_view.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);
 final List<int> list = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return ListView(
      //  crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CarouselSlider(
          items: list
              .map((e) => Container(
            child: Center(
              child: Text(e.toString()),
            ),
            color: Colors.green,
          ))
              .toList(),
          options: CarouselOptions(
            scrollDirection: Axis.horizontal,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(seconds: 1),
            reverse: false,
            autoPlay: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            viewportFraction: 1.0,
            height: 250.0,
            initialPage: 0,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'CATEGORIES',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.1,
              fontSize: 24,
            ),
          ),
        ),
        CategoryListView(),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Popular',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.1,
              fontSize: 24,
            ),
          ),
        ),
        PopularListView(),
        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'For you',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              letterSpacing: 0.1,
              fontSize: 24,
            ),
          ),
        ),
        ForYouListView(),
      ],
    );
  }
}
