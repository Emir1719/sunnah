import 'package:flutter/material.dart';
import 'package:sunnah/widgets/video_description_area.dart';
import 'package:sunnah/widgets/video_title_area.dart';

///Video player'ın alt kısmında kalan alan.
class VideoBody extends StatefulWidget {
  const VideoBody({super.key});

  @override
  State<VideoBody> createState() => _VideoBodyState();
}

class _VideoBodyState extends State<VideoBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        //Video başlığı
        VideoTitleArea(),
        //Video açıklaması
        VideoDescriptionArea(),
      ],
    );
  }
}
