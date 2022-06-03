import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
   String? hint;
   Widget? icon;
  final bool isEditable;
  final bool disabled;
  final bool readOnly;
   TextEditingController? controller;
   void Function(String)? onChanged;
  CustomTextField({
    this.icon,
     this.hint,
    this.isEditable = false,
    this.disabled = false,
    this.readOnly = false,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      enabled: !disabled,
      controller: controller,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: icon,
        suffixIcon: isEditable
            ? IconButton(
                icon: Icon(Icons.mode_edit),
                onPressed: () {},
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.amber),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.amber),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide(color: Colors.amber),
        ),
      ),
      readOnly: readOnly,
    );
  }
}