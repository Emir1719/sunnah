// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

enum Option {
  hep,
  bazen,
  hic,
}

class MyDropdownButton extends StatefulWidget {
  const MyDropdownButton({super.key});

  @override
  _MyDropdownButtonState createState() => _MyDropdownButtonState();
}

class _MyDropdownButtonState extends State<MyDropdownButton> {
  Option selectedOption = Option.hic; // Başlangıçta seçili değer olarak "hiç" seçiyoruz

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
      case Option.hep:
        return 'Hep';
      case Option.bazen:
        return 'Bazen';
      case Option.hic:
        return 'Hiç';
      default:
        return '';
    }
  }
}
