import 'package:dio/dio.dart';
import 'package:news_app/models/news_article.dart';
import 'package:news_app/utils/Constants.dart';

class WebService {
  var dio = new Dio();

  Future<List<NewsArticle>> fetchTopHeadLinesByCountry(String country) async {
    String url = Constants.headLinesFor(country);
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => NewsArticle.fromJson(article)).toList();
    } else {
      throw Exception("failled to get top news");
    }
  }

  Future<List<NewsArticle>> fetchTopHeadLines() async {
    String url = Constants.TOP_HEADLINES_URL;
    final response = await dio.get(url);

    if (response.statusCode == 200) {
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article) => NewsArticle.fromJson(article)).toList();
    } else {
      throw Exception("failled to get top news");
    }
  }
}
