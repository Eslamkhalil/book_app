import 'package:book_app/utils/components/category_books.dart';
import 'package:book_app/utils/components/popular_list_view.dart';
import 'package:flutter/material.dart';

class BookByCategory extends StatelessWidget {
  const BookByCategory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: ListView(
          primary: true,
          shrinkWrap: true,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(0.0),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1466368392l/30651156._SY475_.jpg'
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 200.0,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                const Text(
                 'Programing',
                  maxLines: 1,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),

            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Category Books',
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.1,
                  fontSize: 24,
                ),
              ),
            ),
            CategoryBooks(),

          ],
        ),
      )
    );
  }
}
