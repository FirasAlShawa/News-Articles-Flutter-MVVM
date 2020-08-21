import 'package:flutter/material.dart';
import 'package:news_app/viewmodels/new_article_view_model.dart';
import 'package:news_app/widgets/circle_image.dart';

class NewsArticleDetailScreen extends StatelessWidget {
  final NewsArticleViewModel article;

  NewsArticleDetailScreen({this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/profile.jpeg'),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              constraints: BoxConstraints(maxWidth: 150),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Author",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                  Text(
                    this.article.author ?? "undefined",
                    overflow: TextOverflow.ellipsis,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Divider(
                  color: Color(0xffff8a30),
                  thickness: 20,
                ),
                Text(
                  'HeadLine',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Text(
              this.article.title,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                wordSpacing: 3,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              this.article.publishedAt,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
              ),
            ),
            Container(
              height: 200,
              child: CircleImage(
                imageUrl: this.article.imageUrl,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              this.article.description,
              style: TextStyle(fontSize: 16, wordSpacing: 3),
            ),
          ],
        ),
      ),
    );
  }
}
