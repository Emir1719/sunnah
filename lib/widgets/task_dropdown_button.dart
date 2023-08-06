// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

enum Option { always, generally, rarely, never }

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  Option selectedOption = Option.never; //Başlangıçta seçili değer olarak "hiç" seçilir.

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Option>(
      value: selectedOption,
      underline: const SizedBox(),
      onChanged: (Option? newValue) {
        setState(() {
          selectedOption = newValue!;
        });
      },
      items: Option.values.map((Option option) {
        return DropdownMenuItem<Option>(
          value: option,
          child: Text(optionToString(option)),
        );
      }).toList(),
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
