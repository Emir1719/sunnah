import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sunnah/models/task_model.dart';
import 'package:sunnah/pages/task_detail_without_video.dart';
import 'package:sunnah/riverpods/global_riverpods.dart';
import 'package:sunnah/widgets/bottom_sheet_dvider.dart';
import 'package:sunnah/widgets/come_back_button.dart';
import 'package:sunnah/widgets/video_button.dart';

class VideoBottom extends ConsumerWidget {
  const VideoBottom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var task = ref.watch(currentTaskProvider);

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 5),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const ComeBackButton(),
          const SizedBox(width: 10),
          VideoButton(
            label: "Açıklamayı Oku",
            icon: Icons.read_more_rounded,
            onPressed: () => _descriptionClick(context, task),
          ),
        ],
      ),
    );
  }

  _descriptionClick(BuildContext context, TaskModel task) async {
    await showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15.0),
          topRight: Radius.circular(15.0),
        ),
      ),
      useSafeArea: true,
      isScrollControlled: false,
      builder: (context) {
        return Column(
          children: [
            const BottomSheetDivider(),
            Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: MediaQuery.of(context).size.height / 2,
                child: ProviderScope(
                  overrides: [currentTaskProvider.overrideWithValue(task)],
                  child: const TaskDetailWithoutVideo(),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
