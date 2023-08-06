import 'package:flutter/material.dart';

///Video player'ın alt kısmında kalan alan.
class VideoBody extends StatefulWidget {
  const VideoBody({super.key, required this.title});
  final String title;

  @override
  State<VideoBody> createState() => _VideoBodyState();
}

class _VideoBodyState extends State<VideoBody> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Video başlığı
          videoTitleArea(context),
          //Video açıklaması
          videoDescriptionArea(),
        ],
      ),
    );
  }

  Container videoTitleArea(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      //decoration: ProjectStyle.videoTitle(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 0), //eski değer 10
            child: Text(
              widget.title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
        ],
      ),
    );
  }
}

Expanded videoDescriptionArea() {
  return Expanded(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: ListView(
            padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
            children: [
              Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum." *
                    4,
                style: const TextStyle(fontSize: 16, height: 1.4),
              ),
              //const NextTask(),
            ],
          ),
        ),
      ],
    ),
  );
}
