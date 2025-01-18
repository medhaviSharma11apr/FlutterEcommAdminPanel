import 'package:ecommerce_admin_panel/common/widgets/customshapes/container/rounded_container.dart';
import 'package:flutter/material.dart';

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
              child: Column(
            children: [
              // header
              RoundedContainer(
                width: double.infinity,
                height: 75,
                backgroundColor: Colors.yellow.withOpacity(0.2),
              ),

              // body
              RoundedContainer(
                width: double.infinity,
                height: 500,
                backgroundColor: Colors.blue.withOpacity(0.2),
              ),
              body ?? Container(),
            ],
          ))
        ],
      ),
    );
  }
}
