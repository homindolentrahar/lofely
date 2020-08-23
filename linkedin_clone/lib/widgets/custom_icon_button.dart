import 'package:flutter/material.dart';
import 'package:linkedin_clone/util/color_palette.dart';

class CustomIconButton extends StatelessWidget {
  final double width;
  final double height;
  final IconData icon;
  final double iconSize;
  final Color color;
  final Color iconColor;
  final Function onPressed;

  CustomIconButton({
    this.width = 45,
    this.height = 45,
    @required this.icon,
    this.iconSize = 24,
    this.color = ColorPalette.light,
    this.iconColor = ColorPalette.grey,
    @required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: height,
      color: color,
      elevation: 0,
      highlightElevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: Icon(
        icon,
        color: iconColor,
        size: iconSize,
      ),
      onPressed: onPressed,
    );
  }
}
