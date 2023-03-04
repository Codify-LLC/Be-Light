// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the button on the right!

import '../../flutter_flow/flutter_flow_video_player.dart';

class RotatingAndBrightness extends StatefulWidget {
  const RotatingAndBrightness({
    Key? key,
    this.width,
    this.height,
    required this.angle,
  }) : super(key: key);

  final double? width;
  final double? height;
  final double angle;

  @override
  _RotatingAndBrightnessState createState() => _RotatingAndBrightnessState();
}

class _RotatingAndBrightnessState extends State<RotatingAndBrightness> {
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: widget.angle,
        child: FlutterFlowVideoPlayer(
          path:
              'https://assets.mixkit.co/videos/preview/mixkit-forest-stream-in-the-sunlight-529-large.mp4',
          videoType: VideoType.network,
          autoPlay: true,
          looping: true,
          showControls: true,
          allowFullScreen: true,
          allowPlaybackSpeedMenu: true,
        ));
  }
}
