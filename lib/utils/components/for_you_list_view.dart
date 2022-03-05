import 'package:book_app/models/popular_model.dart';
import 'package:flutter/material.dart';

class ForYouListView extends StatelessWidget {
  ForYouListView({Key? key}) : super(key: key);

  final List<PopularModel> popularList = [
    PopularModel(
        bookImage:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1466368392l/30651156._SY475_.jpg'),
    PopularModel(
        bookImage:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1466368392l/30651156._SY475_.jpg'),
    PopularModel(
        bookImage:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1466368392l/30651156._SY475_.jpg'),
    PopularModel(
        bookImage:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1466368392l/30651156._SY475_.jpg'),
    PopularModel(
        bookImage:
        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1466368392l/30651156._SY475_.jpg'),

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
    return SizedBox(
      height: 200.0,

      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) =>
              buildCategoryItem(popularList[index] , index),
          separatorBuilder: (context, index) => const SizedBox(width: 16.0),
          itemCount: popularList.length),
    );
  }

  Widget buildCategoryItem(PopularModel model , index) {
    return InkWell(
      onTap: (){
        debugPrint(index.toString());
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Image(
          height: 200.0,
          width: 120.0,
          image: NetworkImage(
            model.bookImage!,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
