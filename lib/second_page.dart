import 'package:flutter/material.dart';
import 'package:hello_test/app_bar_mixin.dart';

class SecondPage extends StatelessWidget with AppBarWidget {
  final DateTime nowTime;
  const SecondPage({Key? key, required this.nowTime}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('tick');
    return const Center(
      child: Text('Second'),
    );
  }

  @override
  AppBar? appBar() {
    return AppBar(title: Text(nowTime.toIso8601String()));
  }
}
