import 'package:flutter/material.dart';

mixin AppBarWidget on Widget {
  AppBar? appBar();
}

class LetsPlaySportsSuggestion extends StatelessWidget {
  const LetsPlaySportsSuggestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Container(
          color: Colors.red,
        ),
      );
}

class FlutterSampleWidget extends StatelessWidget with AppBarWidget {
  const FlutterSampleWidget({Key? key}) : super(key: key);

  @override
  AppBar? appBar() {
    return null;
  }

  @override
  Widget build(BuildContext context) => Container(
        color: Colors.red,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Icon(
              Icons.accessible,
              size: 48,
            ),
            Icon(
              Icons.play_arrow,
              size: 48,
            ),
          ],
        ),
      );
}
