import 'package:appinio_video_player/appinio_video_player.dart';
import 'package:flutter/material.dart';
import 'package:learn_engg/data/mappings.dart';

class VideoPlayerView extends StatefulWidget {
  final TopicData data;

  const VideoPlayerView({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<VideoPlayerView> createState() => _VideoPlayerViewState();
}

class _VideoPlayerViewState extends State<VideoPlayerView> {
  late VideoPlayerController videoPlayerController;
  late CustomVideoPlayerController _customVideoPlayerController;
  bool _isVideoLoading = true;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.network(widget.data.url)
      ..initialize().then((value) => setState(() {
            _isVideoLoading = false;
          }));
    _customVideoPlayerController = CustomVideoPlayerController(
      context: context,
      videoPlayerController: videoPlayerController,
    );
  }

  @override
  void dispose() {
    _customVideoPlayerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cScheme = Theme.of(context).colorScheme;
    final tTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data.title),
      ),
      body: ListView(children: [
        Stack(
          children: [
            CustomVideoPlayer(
                customVideoPlayerController: _customVideoPlayerController),
            if (_isVideoLoading)
              const Center(
                child: CircularProgressIndicator(),
              ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            children: <Widget>[
              Text(
                'Description',
                style: tTheme.titleLarge?.copyWith(
                  color: cScheme.onSurfaceVariant,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                widget.data.description,
                style: tTheme.titleMedium?.copyWith(
                  color: cScheme.onSurfaceVariant,
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
