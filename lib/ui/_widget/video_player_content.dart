import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerContent extends StatefulWidget {
  final String url;

  const VideoPlayerContent({
    super.key,
    required this.url,
  });

  @override
  State<VideoPlayerContent> createState() => _VideoPlayerContentState();
}

class _VideoPlayerContentState extends State<VideoPlayerContent> {
  late VideoPlayerController _controller;
  final RxBool _isInitial = false.obs;

  @override
  void initState() {
    _videoInitial();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _isInitial.close();
    super.dispose();
  }

  _videoInitial() async {
    _controller = VideoPlayerController.networkUrl(Uri.parse(widget.url));
    await _controller.initialize();
    _isInitial.value = true;
    _controller.play();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (!_isInitial.value) {
          return const Center(child: CircularProgressIndicator());
        }
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            ),
            VideoProgressIndicator(_controller, allowScrubbing: true),
          ],
        );
      },
    );
  }
}
