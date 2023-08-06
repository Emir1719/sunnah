import 'package:flutter/material.dart';
import 'package:sunnah/constants/style.dart';
import 'package:sunnah/locator.dart';

class VideoDescriptionArea extends StatelessWidget {
  const VideoDescriptionArea({super.key});

  @override
  Widget build(BuildContext context) {
    final style = locator<ProjectStyle>();

    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        children: [
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." *
                4,
            style: style.videoDescriptionText,
          ),
        ],
      ),
    );
  }
}
