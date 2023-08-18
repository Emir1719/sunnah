import 'package:flutter/material.dart';
import 'package:sunnah/widgets/task_dropdown_button.dart';

class ProjectStyle {
  BoxDecoration taskContainer(Option option) {
    var color = Colors.red;

    switch (option) {
      case Option.always:
        color = Colors.green;
        break;
      case Option.generally:
        color = Colors.blue;
        break;
      case Option.rarely:
        color = Colors.orange;
        break;
      default:
        //never and default
        color = Colors.red;
    }

    return BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white,
      boxShadow: [
        BoxShadow(color: color, offset: const Offset(-6, 0)),
        BoxShadow(color: Colors.grey.shade300, offset: const Offset(0, 2), blurRadius: 5),
      ],
    );
  }

  ///Video başlığının ve butonların bulunduğu kısmın stili.
  BoxDecoration videoTitle = const BoxDecoration(
    border: Border(
      bottom: BorderSide(width: 0.5, color: Colors.grey),
    ),
  );

  BoxDecoration taskDropdownButton = BoxDecoration(
    border: Border.all(color: Colors.grey, width: 0.5),
    borderRadius: BorderRadius.circular(10),
  );

  TextStyle videoTitleText = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: Colors.black,
  );

  TextStyle videoDescriptionText = const TextStyle(
    fontSize: 17,
    height: 1.5,
    color: Colors.black,
  );

  TextStyle percentValue = const TextStyle(fontSize: 16);
}
