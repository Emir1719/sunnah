import 'package:flutter/material.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';
import 'package:sunnah/pages/task_detail.dart';
import 'package:sunnah/widgets/task_dropdown_button.dart';

///İnfo - Sünnet - Dropdownbutton bulunduran bir yapı.
class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    final style = locator<ProjectStyle>();

    return Container(
      decoration: style.taskContainer,
      child: GestureDetector(
        onTap: () => onTab(context),
        child: const ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          trailing: MyDropdownButton(),
          title: Text(
            "Tebliğ etmek",
            overflow: TextOverflow.ellipsis,
            maxLines: 3,
          ),
        ),
      ),
    );
  }

  void onTab(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const TaskDetail(title: "Tebliğ etmek"),
      ),
    );
  }
}
