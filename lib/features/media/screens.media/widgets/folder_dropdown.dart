import 'package:ecommerce_admin_panel/features/media/controller/media_controller.dart';
import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class MediaFolderDropDown extends StatelessWidget {
  const MediaFolderDropDown({
    super.key,
    this.onChanged,
  });

  final void Function(MediaCategory?)? onChanged;

  @override
  Widget build(BuildContext context) {
    final controller = MediaController.instance;
    return Obx((() => SizedBox(
          width: 240,
          child: DropdownButtonFormField(
            isExpanded: false,
            value: controller.selctedpath.value,
            onChanged: (value) {},
            items: MediaCategory.values
                .map((e) => DropdownMenuItem(
                      value: e,
                      child: Text(e.name.toUpperCase().toString()),
                    ))
                .toList(),
          ),
        )));
  }
}
