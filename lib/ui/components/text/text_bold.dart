import 'package:flutter/material.dart';
class TextBold extends StatelessWidget {
  final String title;
  final Color colors;
  final double size;
  final double height;
  final bool? isCenter;
  final String? font;

  const TextBold(
      {Key? key,
        required this.title,
        required this.colors,
        required this.size,
        required this.height,
        this.font,
        this.isCenter})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: isCenter != null ? TextAlign.center : null,
      style: TextStyle(
        color: colors,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
        fontFamily: font ?? 'Poppins',
        fontSize: size,
        height: height,
      ),
    );
  }
}
