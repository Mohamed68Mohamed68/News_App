import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  CategoriesListView({
    super.key,
  });

  List<CategoryModel> categories = [
    CategoryModel(
        image: 'assets/images/business.jpg', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/images/entertaiment.jpg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/images/general.jpg', categoryName: 'General'),
    CategoryModel(image: 'assets/images/health.jpg', categoryName: 'Health'),
    CategoryModel(image: 'assets/images/science.jpg', categoryName: 'Science'),
    CategoryModel(image: 'assets/images/sports.jpg', categoryName: 'Sports'),
    CategoryModel(
        image: 'assets/images/technology.jpeg', categoryName: 'Technology'),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            model: categories[index],
          );
        },
      ),
    );
  }
}
