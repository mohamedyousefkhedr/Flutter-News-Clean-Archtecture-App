

import 'package:flutter_clean_arch_news_app/src/data/models/source_model.dart';
import 'package:flutter_clean_arch_news_app/src/domain/entities/article.dart';

import '../../domain/entities/source.dart';

class ArticleModel extends Article {
  const ArticleModel({
    int id,
    String author,
    String title,
    String description,
    Source source,
    String url,
    String urlToImage,
    String publishedAt,
    String content,
  }) : super(
            id: id,
            author: author,
            title: title,
            description: description,
            source: source,
            urlToImage: urlToImage,
            url: url,
            publishedAt: publishedAt,
            content: content);

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
        id: map['id'] as int,
        author: map['author'] as String,
        title: map['title'] as String,
        description: map['description'] as String,
        source: SourceModel.fromJson(map['source'] as Map<String, dynamic>),
        url: map['url'] as String,
        urlToImage: map['urlToImage'] as String,
        publishedAt: map['publishedAt'] as String,
        content: map['content'] as String);
  }
}
