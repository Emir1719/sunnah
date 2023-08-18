import 'package:sunnah/widgets/task_dropdown_button.dart';

class TaskModel {
  final String id;
  final String title;
  final String description;
  final String? videoLink;
  Option option;

  TaskModel({
    required this.id,
    required this.title,
    required this.description,
    this.videoLink,
    this.option = Option.never,
  });
}
