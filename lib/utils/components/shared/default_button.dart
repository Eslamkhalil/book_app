import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {

  const DefaultButton({this.buttonTitle, this.onTap, Key? key})
      : super(key: key);
  final String? buttonTitle;

  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.0,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () => onTap!(),
          style: ElevatedButton.styleFrom(
            shape: const BeveledRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))),
          ),
          child: Text(
            buttonTitle!,
          )),
    );
  }
}
