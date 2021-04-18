import 'package:flutter/material.dart';

import '../../main.dart';

class CustomTextFiled extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final Function(String) textChanged;
  final String error;
  final bool enable;
  final bool obscureText;
  final TextInputType textInputType;
  final Function() obscureChanged;

  CustomTextFiled(this.hint, this.controller,
      {this.error,
      this.enable = true,
      this.obscureText = false,
      this.obscureChanged,
      this.textInputType = TextInputType.emailAddress,
      this.textChanged});

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: enable,
      decoration: InputDecoration(
          suffixIcon: (obscureChanged != null)
              ? IconButton(
                  icon: Icon(
                    Icons.remove_red_eye,
                    color: (obscureText) ? Colors.grey : Color(0xFFFFCC33),
                  ),
                  onPressed: obscureChanged,
                )
              : null,
          border: OutlineInputBorder(
            borderRadius: const BorderRadius.all(const Radius.circular(16.0)),
          ),
          hintStyle: TextStyle(color: Colors.grey[500]),
          labelStyle: TextStyle(color: Colors.grey[900]),
          hintText: hint,
          fillColor: Colors.white70,
          errorText: error),
      textAlign: MyApp.lang == true ? TextAlign.left : TextAlign.right,
      textDirection: MyApp.lang == true ? TextDirection.ltr : TextDirection.rtl,
      controller: controller,
      onChanged: textChanged,
      keyboardType: textInputType,
      obscureText: obscureText,
    );
  }
}
