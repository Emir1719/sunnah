import 'dart:convert';
import 'package:sunnah/widgets/task_dropdown_button.dart';
import 'package:uuid/uuid.dart';

class TaskModel {
  final String id;
  final String title;
  final String description;
  final String? link; //Youtube short video linki
  Option option;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    this.link,
    this.option = Option.never,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'description': description,
      'link': link,
      'option': option,
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: const Uuid().v4(),
      title: map['title'],
      description: map['description'],
      link: map['link'] != null ? map['link'] as String : null,
      option: _optionToString(map["option"]),
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel.fromMap(json);

  @override
  String toString() {
    return title;
  }
}

Option _optionToString(String text) {
  switch (text) {
    case "always":
      return Option.always;
    case "generally":
      return Option.generally;
    case "rarely":
      return Option.rarely;
    case "never":
      return Option.never;
    default:
      throw ArgumentError("Geçersiz seçenek: $text");
  }
}
