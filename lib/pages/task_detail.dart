import 'package:flutter/material.dart';
import 'package:sunnah/widgets/video_body.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

///Video player'ın bulunduğu alan.
class TaskDetail extends StatefulWidget {
  const TaskDetail({super.key, required this.title});
  final String title;

  @override
  State<TaskDetail> createState() => TaskDetailState();
}

class TaskDetailState extends State<TaskDetail> {
  YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
    videoId: 'P79my65IpEk', //9my65IpEk
    autoPlay: false,
    params: const YoutubePlayerParams(
      showFullscreenButton: true,
      mute: false,
      showVideoAnnotations: false,
      loop: false,
      enableCaption: false,
      captionLanguage: 'tr',
      enableJavaScript: true,
      strictRelatedVideos: true,
    ),
  );

  @override
  Widget build(BuildContext context) {
    bool test = true;
    return Scaffold(
      //appBar: AppBar(),
      body: SafeArea(
        child: YoutubePlayerScaffold(
          enableFullScreenOnVerticalDrag: false, //aktif olunca ayarlar çalışmıyor!
          controller: controller,
          backgroundColor: Colors.white,
          aspectRatio: 16 / 9,
          builder: (context, player) {
            Orientation orientation = MediaQuery.of(context).orientation;
            if (orientation == Orientation.portrait) {
              //Dikey
              return Column(
                children: [
                  test ? player : const SizedBox(),
                  VideoBody(title: widget.title), //kendi içinde expanded var!
                ],
              );
            } else {
              //Yatay
              return player;
            }
          },
        ),
      ),
    );
  }
}
