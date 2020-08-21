class NewArticle{
  final String title;
  final String auther;
  final String description;
  final String urlToImage;
  final String url;
  final String publishedAt;
  final String content;

  NewArticle({this.title, this.auther, this.description, this.urlToImage,this.url,
    this.publishedAt, this.content});

  factory NewArticle.fromJson(Map<String,dynamic> json){
    return NewArticle(
      title: json['title'],
      auther: json['auther'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      url: json['url'],
      publishedAt: json['publishedAt'],
      content: json['content']
    );
  }

}