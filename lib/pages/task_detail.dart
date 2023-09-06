import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sunnah/constants/color.dart';
import 'package:sunnah/locator.dart';
import 'package:sunnah/pages/task_detail_without_video.dart';
import 'package:sunnah/riverpods/global_riverpods.dart';
import 'package:sunnah/widgets/video_bottom.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

///Video player'ın bulunduğu alan.
class TaskDetail extends ConsumerStatefulWidget {
  const TaskDetail({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TaskDetailState();
}

class _TaskDetailState extends ConsumerState<TaskDetail> {
  final color = locator<ProjectColor>();

  @override
  Widget build(BuildContext context) {
    var task = ref.watch(currentTaskProvider);
    bool isThereVideo = task.link!.isNotEmpty;

    YoutubePlayerController controller = YoutubePlayerController.fromVideoId(
      videoId: task.link!,
      autoPlay: false,
      params: const YoutubePlayerParams(
        showFullscreenButton: false,
        mute: false,
        showVideoAnnotations: false,
        loop: false,
        enableCaption: false,
        captionLanguage: 'tr',
        enableJavaScript: true,
        strictRelatedVideos: true,
      ),
    );

    return Scaffold(
      body: SafeArea(
        child: YoutubePlayerScaffold(
          autoFullScreen: false,
          enableFullScreenOnVerticalDrag: false, //aktif olunca ayarlar çalışmıyor!
          controller: controller,
          backgroundColor: color.white,
          fullscreenOrientations: const [], // Boş bir dizi, yatay döndürmeyi devre dışı bırakır.
          lockedOrientations: const [DeviceOrientation.portraitUp], // Sadece dikey yönü kilitle
          builder: (context, player) {
            return isThereVideo
                ? Column(
                    children: [
                      Expanded(child: player),
                      ProviderScope(
                        overrides: [currentTaskProvider.overrideWithValue(task)],
                        child: const VideoBottom(),
                      ),
                    ],
                  )
                : ProviderScope(
                    overrides: [currentTaskProvider.overrideWithValue(task)],
                    child: const TaskDetailWithoutVideo(),
                  );
          },
        ),
      ),
    );
  }
}
