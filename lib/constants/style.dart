import 'package:flutter/material.dart';

class ProjectStyle {
  BoxDecoration taskContainer = BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,
    boxShadow: [
      const BoxShadow(color: Colors.red, offset: Offset(-6, 0)),
      BoxShadow(color: Colors.grey.shade300, offset: const Offset(0, 2), blurRadius: 5),
    ],
  );
}
