import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';
import 'package:sunnah/models/task_model.dart';
import 'package:sunnah/pages/task_detail.dart';
import 'package:sunnah/riverpods/global_riverpods.dart';
import 'package:sunnah/widgets/task_dropdown_button.dart';

///İnfo - Sünnet - Dropdownbutton bulunduran bir yapı.
class TaskItem extends ConsumerWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final style = locator<ProjectStyle>();
    var task = ref.watch(currentTaskProvider);

    return Container(
      decoration: style.taskContainer(task.option),
      child: GestureDetector(
        onTap: () => onTab(context, task),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          trailing: const MyDropdownButton(),
          title: Text(
            task.title,
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
      ),
    );
  }

  void onTab(BuildContext context, TaskModel taskModel) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ProviderScope(
          overrides: [currentTaskProvider.overrideWithValue(taskModel)],
          child: const TaskDetail(),
        ),
      ),
    );
  }
}
