import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PageHeading extends StatelessWidget {
  const PageHeading({
    super.key,
    required this.heading,
   this.rightSideWidget,
  });

  final String heading;

  final Widget ?rightSideWidget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          heading,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        rightSideWidget ?? const SizedBox()
      ],
    );
  }
}
