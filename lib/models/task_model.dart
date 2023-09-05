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
      option: Option.never, //Varsayılan değer olarak never atandı.
    );
  }

  String toJson() => json.encode(toMap());

  factory TaskModel.fromJson(Map<String, dynamic> json) => TaskModel.fromMap(json);

  @override
  String toString() {
    return title;
  }
}
