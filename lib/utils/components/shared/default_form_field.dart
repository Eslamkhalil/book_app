import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
   const DefaultFormField({this.controller, this.hint, this.onTap, this.preIcon,
      this.sufIcon, this.suffixPressed, this.isPassword = false, this.onChange,
      Key? key})
      : super(key: key);
  final TextEditingController? controller;
  final String? hint;
  final Function? onTap;
  final IconData? preIcon;
  final IconData? sufIcon;
  final Function? suffixPressed;
  final bool isPassword;
  final Function? onChange;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isPassword,
      onTap: () => onTap!(),
      onChanged: (s) => onChange!(s),
      validator: (value) {
        if (value!.isEmpty) {
          return '$hint must be provided';
        }
        return null;
      },
      decoration: InputDecoration(
        prefixIcon: Icon(
          preIcon,
          color: Colors.grey,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            sufIcon,
            color: Colors.grey,
          ),
          onPressed: () => suffixPressed,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
        hintText: hint,
      ),
    );
  }
}
