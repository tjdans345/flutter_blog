import 'package:flutter/material.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/pages/user/login_page.dart';
import 'package:get/get.dart';
import 'package:validators/validators.dart';

class JoinPage extends StatelessWidget {
  //폼의 상태를 관리하는 글로벌 키
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
            _joinForm(),
          ],
        ),
      ),
    );
  }

  Widget _joinForm() {
    return Form(
        key: _formKey,
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
            CustomTextFormField(
              hint: "Email",
              funValidator: validateEmail(),
            ),
            CustomElevatedButton(
              text: 'Sign-Up',
              funPageRoute: () {
                if(_formKey.currentState!.validate()){
                  Get.to(LoginPage());
                }
              }
              ),
            TextButton(onPressed: (){Get.to(LoginPage());}, child: Text('로그인 페이지로 이동?'))
          ],
        ));
  }
}
