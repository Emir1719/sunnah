import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/constants/color.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';
import 'package:sunnah/riverpods/global_riverpods.dart';

class Percent extends ConsumerWidget {
  const Percent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double progressValue = ref.watch(displayAllTaskProvider.notifier).getCompletionPercentage(); // ilerleme değeri
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
              '$progressValue%',
              style: style.percentValue,
            ),
          ),
        ],
      ),
    );
  }
}
