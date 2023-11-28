import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Post {
  final String name;
  final String description;
  final double like;
  final String? id;
  final List<String> images;
  Post({
    required this.name,
    required this.description,
    required this.like,
    this.id,
    required this.images,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'description': description,
      'like': like,
      'id':id,
      'images': images,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      like: map['like']?.toDouble() ?? 0.0,
      images: List<String>.from(map['images']),
      id:map['_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source) as Map<String, dynamic>);
}
