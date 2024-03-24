import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  final double? height;
  final double? width;
  final Color? color;
  final Color? borderColor;
  final double? borderWidth;
  final bool? isBordered;
  final VoidCallback? onPress;
  final Widget? widget;
  final double? borderRadius;
  final List<BoxShadow>? boxShadow;

  const ContainerWidget({
    super.key,
    this.height,
    this.width,
    this.color,
    this.borderColor,
    this.borderWidth,
    this.isBordered = false,
    this.onPress,
    this.widget,
    this.borderRadius,
    this.boxShadow,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      key: const Key('common-inkwell-key'),
      splashColor: Colors.transparent,
      onTap: onPress,
      child: Container(
        key: const Key('common-container-key'),
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          boxShadow: boxShadow == null ? [] : boxShadow!,
          borderRadius: borderRadius == null
              ? BorderRadius.circular(10)
              : BorderRadius.circular(borderRadius!),
          border: isBordered == true
              ? Border.all(width: borderWidth!, color: borderColor!)
              : null,
        ),
        child: widget,
      ),
    );
  }
}