import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {

  final String hint;
  final funValidator;
  final String? value;

  const CustomTextFormField({
    required this.hint, required this.funValidator, this.value
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: TextFormField(
        initialValue: value ?? "",
        //각자 다른값을 받을 때에는 외부에서 받는다
        validator: funValidator,
        obscureText: hint == 'Password' ? true : false,
        decoration: InputDecoration(
          hintText: 'Enter $hint',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),

        ),
      ),
    );
  }
}
