import 'package:flutter/material.dart';

import '../../widgets/customshapes/container/rounded_container.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(),
      body: Row(
        children: [
          const Expanded(child: Drawer()),
          Column(
            children: [
              //HEADER
              RoundedContainer(
                width: double.infinity,
                height: 500,
                backgroundColor: Colors.yellow.withOpacity(0.2),
              ),

              // Body
              RoundedContainer(
                width: double.infinity,
                height: 500,
                backgroundColor: Colors.blue.withOpacity(0.2),
              ),
            ],
          )
        ],
      ),
    );
  }
}
