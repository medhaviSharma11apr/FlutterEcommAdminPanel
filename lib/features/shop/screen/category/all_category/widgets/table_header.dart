import 'package:ecommerce_admin_panel/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
    this.onPressed,
    this.onChanged,
    this.buttonText = 'Create New Category',
  });
  final Function()? onPressed;
  final Function(String)? onChanged;
  final String buttonText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          flex: TDeviceUtils.isDesktopScreen(context) ? 3 : 1,
          child: Row(
            children: [
              SizedBox(
                width: 200,
                child: ElevatedButton(
                    onPressed: onPressed,
                    child: Text(
                      buttonText,
                    )),
              ),
            ],
          ),
        ),
        Expanded(
          flex: TDeviceUtils.isDesktopScreen(context) ? 2 : 1,
          child: TextFormField(
            onChanged: (value) {},
            decoration: const InputDecoration(
                hintText: 'Search Categories Here ....',
                prefixIcon: Icon(Icons.search)),
          ),
        )
      ],
    );
  }
}
