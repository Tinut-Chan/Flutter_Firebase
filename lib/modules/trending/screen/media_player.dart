import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:firebase_storage/firebase_storage.dart';

class VideoPlayer extends StatefulWidget {
  const VideoPlayer({super.key});

  @override
  State<VideoPlayer> createState() => _VideoPlayerState();
}

class _VideoPlayerState extends State<VideoPlayer> {
  final FirebaseStorage storage = FirebaseStorage.instance;

  VideoPlayerController? controller;
  Future<void>? future;

  @override
  void initState() {
    super.initState();
    loadVideo();
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  Future<void> loadVideo() async {
    final ref = storage.ref().child('ForBiggerBlazes.mp4');
    final url = await ref.getDownloadURL();

    controller = VideoPlayerController.network(url);
    future = controller?.initialize();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (controller == null || !controller!.value.isInitialized) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    return AspectRatio(
      aspectRatio: controller!.value.aspectRatio,
      child: const VideoPlayer(),
    );
  }
}
