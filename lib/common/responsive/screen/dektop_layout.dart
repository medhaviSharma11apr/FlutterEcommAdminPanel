
import 'package:flutter/material.dart';

import '../../widgets/layout/header/header.dart';
import '../../widgets/layout/templates/header.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key, this.body});
  final Widget? body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Expanded(child: Drawer()),
          Expanded(
              flex: 5,
              child: Column(
                children: [
                  // header

                  const HeaderWidget(),

                  // RoundedContainer(
                  //   width: double.infinity,
                  //   height: 75,
                  //   backgroundColor: Colors.yellow.withOpacity(0.2),
                  // ),

                  // body
                  // RoundedContainer(
                  //   width: double.infinity,
                  //   height: 500,
                  //   backgroundColor: Colors.blue.withOpacity(0.2),
                  // ),
                  body ?? Container(),
                ],
              ))
        ],
      ),
    );
  }
}
