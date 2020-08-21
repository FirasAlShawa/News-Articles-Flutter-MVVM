import 'package:flutter/material.dart';
import 'package:news_app/viewmodels/new_article_view_model.dart';

import 'circle_image.dart';

class NewsGrid extends StatelessWidget {
  final List<NewsArticleViewModel> articles;

  NewsGrid({this.articles});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        var article = articles[index];
        return GridTile(
          child: Container(
            child: CircleImage(
              imageUrl: article.imageUrl,
            ),
          ),
        );
      },
      itemCount: this.articles.length,
    );
  }
}
