import 'package:book_app/models/popular_model.dart';
import 'package:flutter/material.dart';

class CategoryBooks extends StatelessWidget {
  CategoryBooks({Key? key}) : super(key: key);
  final List<PopularModel> popularList = [
    PopularModel(
        bookImage:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    PopularModel(
        bookImage:
        'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          mainAxisExtent: 160,
          childAspectRatio: 1),
      itemBuilder: (context, index) => buildCategoryItem(popularList[index]),
      itemCount: popularList.length,
    );
  }

  Widget buildCategoryItem(PopularModel model) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image(
        height: 200.0,
        width: 130.0,
        image: NetworkImage(
          model.bookImage!,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
