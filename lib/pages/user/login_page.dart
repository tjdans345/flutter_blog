import 'package:flutter/material.dart';
import 'package:flutter_blog/components/custom_elevated_button.dart';
import 'package:flutter_blog/components/custom_text_form_field.dart';
import 'package:flutter_blog/pages/post/home_page.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              height: 200,
              child: Text(
                'Sign-Up Page',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            _loginForm(),
          ],
        ),
      ),
    );
  }

  Widget _loginForm() {
    return Form(
        child: Column(
      children: [
        CustomTextFormField(
          hint: "UserName",
          funValidator: validateName(),
        ),
        CustomTextFormField(
          hint: "Password",
          funValidator: validatePassword(),
        ),
        CustomElevatedButton(
            text: 'Sign-In', funPageRoute: () {
          if(_formKey.currentState!.validate()){
            Get.to(HomePage());
          }
        }),
      ],
    ));
  }
}
