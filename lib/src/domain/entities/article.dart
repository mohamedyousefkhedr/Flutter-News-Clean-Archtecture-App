// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore: import_of_legacy_library_into_null_safe
import 'package:equatable/equatable.dart';

import 'package:flutter_clean_arch_news_app/src/domain/entities/source.dart';

class Article extends Equatable {

  final String author;

 final String description;

 final String content;

final int id;

final String publishedAt;

final Source source;

final String title;

final String url;

final String urlToImage;

   const Article(
      {  this.id,
       this.source,
       this.author,
      this.title,
      this.description,
      this.url,
      this.urlToImage,
      this.publishedAt,
      this.content});

  @override
  List<Object> get props {
    return [
      author,
      description,
      content,
      id,
      publishedAt,
      source,
      title,
      url,
      urlToImage,
    ];
  }
}
