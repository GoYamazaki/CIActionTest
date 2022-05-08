import 'package:flutter/material.dart';
import 'package:hello_test/app_bar_mixin.dart';

class FirstPage extends StatelessWidget with AppBarWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('First Page'),
    );
  }

  @override
  AppBar? appBar() {
    return null;
  }
}
