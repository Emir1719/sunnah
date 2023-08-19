// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';
import 'package:sunnah/riverpods/global_riverpods.dart';

enum Option { always, generally, rarely, never }

class MyDropdownButton extends ConsumerStatefulWidget {
  const MyDropdownButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends ConsumerState<MyDropdownButton> {
  Option selectedOption = Option.never; //Başlangıçta seçili değer olarak "hiç" seçilir.
  var style = locator<ProjectStyle>();

  @override
  Widget build(BuildContext context) {
    var task = ref.watch(currentTaskProvider);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: style.taskDropdownButton,
      child: DropdownButton<Option>(
        value: task.option,
        underline: const SizedBox(),
        onChanged: (Option? newValue) {
          ref.read(displayAllTaskProvider.notifier).edit(task.id, newValue!);
        },
        items: Option.values.map((Option option) {
          return DropdownMenuItem<Option>(
            value: option,
            child: Text(optionToString(option)),
          );
        }).toList(),
      ),
    );
  }

  String optionToString(Option option) {
    switch (option) {
      case Option.always:
        return 'Her zaman';
      case Option.generally:
        return 'Genellikle';
      case Option.rarely:
        return 'Nadir';
      case Option.never:
        return 'Hiç';
      default:
        return '';
    }
  }
}
