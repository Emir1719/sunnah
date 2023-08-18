import 'package:flutter/material.dart';
import 'package:sunnah/constants/color.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';

class Percent extends StatelessWidget {
  const Percent({super.key});

  @override
  Widget build(BuildContext context) {
    double progressValue = 0.646; // ilerleme değeri
    var color = locator<ProjectColor>();
    var style = locator<ProjectStyle>();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Row(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: LinearProgressIndicator(value: progressValue, minHeight: 15, color: color.green),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Text(
              '${(progressValue * 100).toStringAsFixed(1)}%',
              style: style.percentValue,
            ),
          ),
        ],
      ),
    );
  }
}
