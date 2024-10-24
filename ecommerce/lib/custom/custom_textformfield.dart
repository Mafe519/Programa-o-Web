import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Widget? text;
  double? border = 1;
  bool? isPassword;
  CustomTextFormField({super.key,this.text, this.border, this.isPassword, });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10.0),
      child: TextFormField(
        obscureText: isPassword == null ? false : true,
        decoration:  InputDecoration(
          label: text,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(width: 1),
          ),
        ),
      ),
    );
  }
}