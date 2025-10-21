// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class TopicModel {
  int id;
  String name;
  TopicModel({
    required this.id,
    required this.name,
  });

  TopicModel copyWith({
    int? id,
    String? name,
  }) {
    return TopicModel(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  factory TopicModel.fromMap(Map<String, dynamic> map) {
    return TopicModel(
      id: map['id'] as int,
      name: map['name'] as String,
    );
  }

  factory TopicModel.fromJson(String source) =>
      TopicModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'TopicModel(id: $id, name: $name)';

  @override
  bool operator ==(covariant TopicModel other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode;
}
