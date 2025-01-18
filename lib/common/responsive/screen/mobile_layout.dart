import 'package:ecommerce_admin_panel/common/widgets/layout/headers/header.dart';
import 'package:flutter/material.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key, this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: const HeaderWidget(),
      body: body ?? Container(),
    );
  }
}