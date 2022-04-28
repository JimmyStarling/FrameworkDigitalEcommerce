import 'package:flutter/material.dart';
import 'package:framework_digital_ecommerce/resource/values/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
      required this.hint,
      this.obsecure = false,
      required this.validator,
      required this.onSaved
  });
  
  final FormFieldSetter<String> onSaved;
  final String hint;
  final bool obsecure;
  final FormFieldValidator<String> validator;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        onSaved: onSaved,
        validator: validator,
        autofocus: true,
        obscureText: obsecure,
        style: const TextStyle(
          color: AppColors.SECONDARY_COLOR,
          fontSize: 20,
        ),
        decoration: InputDecoration(
            hintStyle: const TextStyle(
              fontWeight: FontWeight.normal, 
              fontSize: 20,
              fontFamily: 'Inter',
            ),
            hintText: hint,
            border: const UnderlineInputBorder(),
          ),
      ),
    );
  }
}