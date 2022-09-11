import 'package:flutter_clean_arch_news_app/src/domain/entities/source.dart';

class SourceModel extends Source {
  const SourceModel({  String id,  String name})
      : super(id: id, name: name);

  factory SourceModel.fromJson(Map<String, dynamic> map) {
    return SourceModel(id: map['id'] as String, name: map['name'] as String); 
  }
}
