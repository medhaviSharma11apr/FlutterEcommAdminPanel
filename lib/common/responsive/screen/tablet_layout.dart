import 'package:flutter/material.dart';

import '../../widgets/layout/headers/header.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key, required this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: HeaderWidget(),
      body: body ?? Container(),
    );
  }
}
