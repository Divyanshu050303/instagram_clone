import 'dart:convert';


class Post {
  final String name;
  final String description;
  final double like;
  final List<String> images;
  final String? id;
  Post({
    required this.name,
    required this.description,
    required this.like,
    required this.images,
    this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'quantity': like,
      'images': images,
      'id': id,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      like: map['like']?.toDouble() ?? 0.0,
      images: List<String>.from(map['images']),
      id: map['_id'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) =>
      Post.fromMap(json.decode(source));
}
