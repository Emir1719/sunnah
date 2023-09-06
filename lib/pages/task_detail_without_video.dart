import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';
import 'package:sunnah/riverpods/global_riverpods.dart';
import 'package:sunnah/widgets/come_back_button.dart';

class TaskDetailWithoutVideo extends ConsumerWidget {
  const TaskDetailWithoutVideo({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var task = ref.watch(currentTaskProvider);
    var style = locator<ProjectStyle>();

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  task.title,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: style.videoTitleText,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: Text(
                  task.description,
                  style: style.videoDescriptionText,
                ),
              ),
              const ComeBackButton(),
            ],
          ),
        ),
      ),
    );
  }
}
