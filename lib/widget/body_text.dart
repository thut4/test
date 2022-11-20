import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  final String text;
  final Color? color;
  double size;
  final FontWeight fontWeight;
  BodyText({
    Key? key,
    required this.text,
    this.color,
    required this.fontWeight,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Align(
        alignment: Alignment.topLeft,
        child: Text(
          text,
          style:
              TextStyle(fontSize: size, color: color, fontWeight: fontWeight),
        ),
      ),
    );
  }
}
