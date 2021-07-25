import 'package:flutter/material.dart';
import 'package:flutter_blog/domain/user/user_repository.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:flutter_blog/view/pages/user/join_page.dart';
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
        CustomElevatedButton(
            text: 'Sign-In', funPageRoute: () {
          if(_formKey.currentState!.validate()){
            // Get.to(HomePage());
            UserRepository u = UserRepository();
            u.login("ssar", "1234");
          }
        }),
        TextButton(onPressed: (){Get.to(JoinPage());}, child: Text('아직 회원가입이 안되어 있나요 ?'))

      ],
    ));
  }
}
