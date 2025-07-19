import 'package:dio/dio.dart';
import 'package:news_app/models/articale_model.dart';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticaleModel>> getTopHeadLines(
      {required String category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=648d76a62e134bf1b7202c7e7ac13b0d&category=$category');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticaleModel> articalesList = [];

      for (var articale in articles) {
        ArticaleModel articaleModel = ArticaleModel.Fromjson(articale);
        articalesList.add(articaleModel);
      }
      return articalesList;
    } on Exception {
      return [];
    }
  }
}
