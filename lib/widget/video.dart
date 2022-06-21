import 'package:video_player/video_player.dart';
import 'package:flutter/material.dart';

class VideoApp extends StatefulWidget {
  VideoApp({Key? key, required this.uri}) : super(key: key);

  String uri;

  @override
  _VideoAppState createState() => _VideoAppState(uri);
}

class _VideoAppState extends State<VideoApp> {
  _VideoAppState(this.url);
  final url;
  late VideoPlayerController _controller;

  var demo =
      'https://player.vimeo.com/external/328940142.hd.mp4?s=1ea57040d1487a6c9d9ca9ca65763c8972e66bd4&profile_id=175';

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(url)
      ..initialize().then((_) {
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {
          _controller.value.isPlaying
              ? _controller.pause()
              : _controller.play();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.black,
        child: _controller.value.isInitialized
            ? AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              )
            : Container(),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
