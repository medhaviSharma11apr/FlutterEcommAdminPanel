import 'dart:io';

import 'package:ecommerce_admin_panel/utils/constants/enums.dart';
import 'package:ecommerce_admin_panel/utils/constants/sizes.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class TRoundedImage extends StatelessWidget {
  const TRoundedImage({
    Key? key,
    this.width = 56,
    this.height = 56,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.border,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.padding = TSizes.sm,
    // this.isNetworkImage = false,
    // this.onPressed,
    this.borderRadius = TSizes.md,
    required this.imageType,
    this.file,
    this.overlayColor,
    this.memoryImage,
    this.margin,
  }) : super(key: key);
  final bool applyImageRadius;
  final BoxBorder? border;
  final double borderRadius;
  final BoxFit fit;
  final String imageUrl;
  final File? file;
  final ImageType imageType;
  final Color? overlayColor;
  final Uint8List? memoryImage;
  final double? width, height, padding;

  final Color? backgroundColor;
  final double? margin;
  // final EdgeInsetsGeometry? padding;
  // final bool isNetworkImage;
  // final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: onPressed,
      child: Container(
        height: height,
        width: width,
        padding: EdgeInsets.all(padding!),
        decoration: BoxDecoration(
          border: border,
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: _buildImageWidget(),
      ),
    );
  }

  Widget _buildImageWidget() {
    Widget imageWidget;

    switch (imageType) {
      case ImageType.network:
        imageWidget = _buildNetworkImage();
        break;

      case ImageType.memory:
        imageWidget = _buildMemoryImage();
        break;

      case ImageType.file:
        imageWidget = _buildFileImage();
        break;
      case ImageType.asset:
        imageWidget = _buildAssetImage();
        break;
    }

    return ClipRRect(
        borderRadius: applyImageRadius
            ? BorderRadius.circular(borderRadius)
            : BorderRadius.zero,
        child: imageWidget);
  }

  Widget _buildAssetImage() {
    if (imageUrl != null) {
      return Image(
        image: AssetImage(imageUrl),
        color: overlayColor,
        fit: fit,
      );
    } else {
      return Container();
    }
  }

  Widget _buildNetworkImage() {
    if (imageUrl != null) {
      return Image(
        image: NetworkImage(imageUrl),
        color: overlayColor,
        fit: fit,
      );
    } else {
      return Container();
    }
  }

  Widget _buildFileImage() {
    if (imageUrl != null) {
      return Image(
        image: FileImage(file!),
        color: overlayColor,
        fit: fit,
      );
    } else {
      return Container();
    }
  }

  Widget _buildMemoryImage() {
    if (imageUrl != null) {
      return Image(
        image: MemoryImage(memoryImage!),
        color: overlayColor,
        fit: fit,
      );
    } else {
      return Container();
    }
  }
}
