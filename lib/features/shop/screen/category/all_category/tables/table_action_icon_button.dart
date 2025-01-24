import 'package:ecommerce_admin_panel/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class TableActionButtons extends StatelessWidget {
  const TableActionButtons(
      {super.key,
      this.view = false,
      this.edit = true,
      this.delete = true,
      this.onViewPressed,
      this.oneditressed,
      this.onDeletePressed});

// Flag to determine wheather view button is enable

  final bool view;

// Flag to determine wheather edit button is enable

  final bool edit;

// Flag to determine wheather delete button is enable

  final bool delete;
// Call back function when view button is pressed

  final VoidCallback? onViewPressed;

// Call back function when edit button is pressed
  final VoidCallback? oneditressed;

// Call back function when delete button is pressed
  final VoidCallback? onDeletePressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (view)
          IconButton(
              onPressed: onViewPressed,
              icon: const Icon(
                Icons.remove_red_eye,
                color: TColors.darkGrey,
              )),
        if (edit)
          IconButton(
              onPressed: oneditressed,
              icon: const Icon(
                Icons.edit,
                color: TColors.primary,
              )),
        if (delete)
          IconButton(
              onPressed: onDeletePressed,
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              )),
      ],
    );
  }
}
