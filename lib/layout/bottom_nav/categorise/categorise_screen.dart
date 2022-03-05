import 'package:book_app/models/category_model.dart';
import 'package:book_app/utils/components/shared/my_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CategoriseScreen extends StatelessWidget {
  CategoriseScreen({Key? key}) : super(key: key);
  final List<CategoryModel> data = [
    CategoryModel(
        title: 'love',
        image:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    CategoryModel(
        title: 'love',
        image:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    CategoryModel(
        title: 'love',
        image:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    CategoryModel(
        title: 'love story',
        image:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
    CategoryModel(
        title: 'love',
        image:
            'https://www.rd.com/wp-content/uploads/2019/11/heart-book-e1574702487427-scaled.jpg?resize=768,697'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        /* Stack(
          children: [
            Container(
              height: 250.0,
              color: Colors.white,
            ),
            ShaderMask(shaderCallback: (rect) {
              return const LinearGradient(
                      begin: Alignment.topLeft,
                      colors: [Colors.white, Colors.transparent],
                      end: Alignment.bottomLeft)
                  .createShader(Rect.fromLTRB(0, 100, rect.width, rect.height));
            },
              blendMode: BlendMode.dstIn,
              child: const Image(
                height: 300.0,
                width:double.infinity,
                fit: BoxFit.cover,
                image: NetworkImage(
                'https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1466368392l/30651156._SY475_.jpg',
              ),),

            ),
          ],
        ),*/

        const Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: Text(
              'Categories',
              style: TextStyle(
                fontSize: 32,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
          child: MyDivider(),
        ),
        const SizedBox(height: 16.0),
        GridView.builder(
          primary: false,
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              mainAxisExtent: 140,
              childAspectRatio: 1),
          itemBuilder: (context, index) => buildCategoryItem(data[index]),
          itemCount: data.length,
        ),
      ],
    );
  }

  Widget buildCategoryItem(CategoryModel model) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(25.0),
              image: DecorationImage(
                image: NetworkImage(
                  model.image!,
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            height: 200.0,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(25.0),
            ),
          ),
          Text(
            model.title!,
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
