import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String videoUrl;
  const VideoPlayerScreen({super.key, required this.videoUrl});

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  bool _isInitializing = true; // track init state

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.videoUrl);

    _controller.initialize().then((_) {
      if (mounted) {
        setState(() {
          _isInitializing = false; // initialization done
        });
        _controller.play();
      }
    });

    _controller.addListener(() {
      if (mounted) setState(() {}); // listen for buffering updates
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        if (didPop && _controller.value.isPlaying) {
          _controller.pause();
        }
      },
      child: Scaffold(
        appBar: AppBar(title: const Text("Video Player")),
        body: Center(
          child: _isInitializing
          // Loader before video initialize
              ? const CircularProgressIndicator()
              : Stack(
            alignment: Alignment.center,
            children: [
              AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              ),
              // Loader while buffering
              if (_controller.value.isBuffering)
                const CircularProgressIndicator(),
            ],
          ),
        ),
        floatingActionButton: !_isInitializing
            ? FloatingActionButton(
          onPressed: () {
            setState(() {
              _controller.value.isPlaying
                  ? _controller.pause()
                  : _controller.play();
            });
          },
          child: Icon(
            _controller.value.isPlaying
                ? Icons.pause
                : Icons.play_arrow,
          ),
        )
            : null,
      ),
    );
  }
}
