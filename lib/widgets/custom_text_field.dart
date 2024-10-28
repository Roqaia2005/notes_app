import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';

class customTextField extends StatelessWidget {
  const customTextField({super.key, required this.hint,  this.maxLines=1});
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintMaxLines: maxLines,
          hintStyle: TextStyle(color: kPrimaryColor.withOpacity(0.3)),
          // border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder buildBorder([Color? color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
