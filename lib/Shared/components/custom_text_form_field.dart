import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.text,
    this.suffixICon,
    this.prefixIcon,
    required this.inputType,
    this.onSaved,
    this.onChanged,
    this.maxLines,
  });

  final String? text;
  final IconData? suffixICon;
  final IconData? prefixIcon;
  final TextInputType? inputType;
  final FormFieldSetter<String>? onSaved;
  final ValueSetter<String>? onChanged;
  final int? maxLines;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        key: text != null ? Key(text!) : null,
        keyboardType: inputType,
        onSaved: onSaved,
        onChanged: onChanged,
        maxLines: maxLines,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color(0xFFcccccc)),
          ),
          labelText: text,
          prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
          suffixIcon: suffixICon != null ? Icon(suffixICon) : null,
        ),
      ),
    );
  }
}
