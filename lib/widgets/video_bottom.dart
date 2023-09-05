import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sunnah/widgets/come_back_button.dart';
import 'package:sunnah/widgets/video_button.dart';

class VideoBottom extends ConsumerWidget {
  const VideoBottom({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
