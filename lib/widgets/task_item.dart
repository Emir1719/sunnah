import 'package:flutter/material.dart';
import 'package:sunnah/constants/color.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';
import 'package:sunnah/pages/task_detail.dart';
import 'package:sunnah/widgets/task_dropdown_button.dart';

///İnfo - Sünnet - Dropdownbutton bulunduran bir yapı.
class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    final color = locator<ProjectColor>();

    return Container(
      decoration: ProjectStyle().taskContainer,
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 2, vertical: 5) + const EdgeInsets.only(right: 8),
        trailing: const MyDropdownButton(),
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TaskDetail(title: "Tebliğ etmek"),
              ),
            );
          },
          padding: EdgeInsets.zero,
          icon: const Icon(Icons.info),
          color: color.infoIcon,
        ),
        title: const Text(
          "Tebliğ etmek",
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
        ),
      ),
    );
  }
}
