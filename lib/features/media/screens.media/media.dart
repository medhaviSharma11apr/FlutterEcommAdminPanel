import 'package:ecommerce_admin_panel/common/widgets/layout/templates/site_layout.dart';
import 'package:ecommerce_admin_panel/features/media/screens.media/responsive/media_desktop.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SiteLayout(
      desktop: MediaDesktopScreen(),
    );
  }
}
