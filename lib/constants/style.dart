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

  ///Video başlığının ve butonların bulunduğu kısmın stili.
  BoxDecoration videoTitle = const BoxDecoration(
    color: Color(0xffF9FAFD), // Strong White
    border: Border(
      bottom: BorderSide(width: 0.5, color: Colors.grey),
    ),
  );

  TextStyle videoTitleText = const TextStyle(fontSize: 18, fontWeight: FontWeight.w500);

  TextStyle videoDescriptionText = const TextStyle(fontSize: 17, height: 1.5);
}
