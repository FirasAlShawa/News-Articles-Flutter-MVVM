import 'package:dio/dio.dart';
import 'package:news_app/models/news_article.dart';

class WebService{
  var dio = new Dio();

  Future<List<NewsArticle>> fetchTopHeadLines() async{
    String url = 'http://newsapi.org/v2/everything?q=bitcoin&from=2020-07-21&sortBy=publishedAt&apiKey=340abb56db1d4ffb95062186a3cdc552';
    final response = await dio.get(url);

    if(response.statusCode == 200){
      final result = response.data;
      Iterable list = result['articles'];
      return list.map((article)=>NewsArticle.fromJson(article)).toList();
    }else{
      throw Exception("failled to get top news");
    }
  }

}