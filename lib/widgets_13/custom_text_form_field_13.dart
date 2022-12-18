import 'package:flutter/material.dart';

class CustomTextFormField_13 extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscuereText;
  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextFormField_13({
    Key? key,
    this.hintText,
    this.labelText,
    this.helperText,
    this.suffixIcon,
    this.keyboardType,
    this.obscuereText = false,
    required this.formProperty,
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      keyboardType: keyboardType,
      obscureText: obscuereText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value!.length < 6) {
          return 'Minimo 6 caracteres';
        }
        if (value.length > 20) {
          return 'Minimo 20 caracteres';
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        suffixIcon: Icon(suffixIcon),
      ),
    );
  }
}
