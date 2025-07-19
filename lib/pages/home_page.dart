import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articale_model.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import 'package:news_app/widgets/category_card.dart';
import 'package:news_app/widgets/news_list_view.dart';
import 'package:news_app/widgets/news_list_view_builder.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: RichText(
          text: TextSpan(
            style: TextStyle(color: Colors.black, fontSize: 28),
            children: [
              TextSpan(text: 'News'),
              TextSpan(
                text: 'Cloud',
                style: TextStyle(color: Colors.yellow),
              ),
            ],
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: CategoriesListView(),
              ),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 32,
                ),
              ),
              NewsListViewBuilder(
                catergory: 'general',
              ),
            ],
          )),
    );
  }
}
