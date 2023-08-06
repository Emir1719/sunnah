import 'package:flutter/material.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';

class VideoTitleArea extends StatelessWidget {
  const VideoTitleArea({super.key});

  @override
  Widget build(BuildContext context) {
    final style = locator<ProjectStyle>();

    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: style.videoTitle,
      child: Text(
        "Tebliğ Etmek",
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: style.videoTitleText,
      ),
    );
  }
}
