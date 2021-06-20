import 'dart:convert';

import 'package:equatable/equatable.dart';

class Todos extends Equatable {
  final int id;
  final String title;
  final String description;

  Todos({
    required this.id,
    required this.title,
    required this.description,
  });

  Todos copyWith({
    int? id,
    String? title,
    String? description,
  }) {
    return Todos(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
    };
  }

  factory Todos.fromMap(Map<String, dynamic> map) {
    return Todos(
      id: map['id'],
      title: map['title'],
      description: map['description'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Todos.fromJson(String source) => Todos.fromMap(json.decode(source));

  @override
  List<Object> get props => [id, title, description];
}
