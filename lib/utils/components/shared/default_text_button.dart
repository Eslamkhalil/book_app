import 'package:flutter/material.dart';

class DefaultTextButton extends StatelessWidget {
  const DefaultTextButton(
      {this.title, this.onTap, required this.color, Key? key})
      : super(key: key);

  final String? title;
  final Function? onTap;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => onTap!(),
      child: Text(
        title!,
        style: TextStyle(letterSpacing: 0.1, fontSize: 18.0, color: color),
      ),
    );
  }
}
