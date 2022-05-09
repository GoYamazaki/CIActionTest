import 'package:flutter/material.dart';

import 'app_bar_mixin.dart';

// todo add thridpage bloc

class ThirdPage extends StatelessWidget with AppBarWidget {
  const ThirdPage({Key? key}) : super(key: key);

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
