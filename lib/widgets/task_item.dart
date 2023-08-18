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

    return Container(
      decoration: style.taskContainer(Option.never),
      child: GestureDetector(
        onTap: () => onTab(context, ref.read(currentTaskProvider)),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          trailing: const MyDropdownButton(),
          title: Text(
            ref.read(currentTaskProvider).title,
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
        builder: (context) => TaskDetail(task: taskModel),
      ),
    );
  }
}
