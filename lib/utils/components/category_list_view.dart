
import 'package:book_app/models/category_model.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  CategoryListView({Key? key}) : super(key: key);

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
    return SizedBox(
      height: 150.0,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => buildCategoryItem(data[index]),
          separatorBuilder: (context, index) => const SizedBox(width: 16.0),
          itemCount: data.length),
    );
  }

  Widget buildCategoryItem(CategoryModel model) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120.0,
        height: 200.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Image(
              height: 200.0,
              width: 120.0,
              image: NetworkImage(
                model.image!,
              ),
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
              ),
              child: Text(
                model.title!,
                maxLines: 1,
                textAlign: TextAlign.center,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400,color: Colors.white,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
