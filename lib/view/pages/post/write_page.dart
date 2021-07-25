import 'package:flutter/material.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/components/custom_textarea.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:get/get.dart';


class WritePage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('글 쓰기페이지'),),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Form(
              key: _formKey,
                child: Column(
                  children: [
                    CustomTextFormField(hint: "Title", funValidator: validateTitle()),
                    CustomTextArea(hint: 'Content', funValidator: validateContent()),
                    SizedBox(height: 20,),
                    CustomElevatedButton(
                        text: 'write', funPageRoute: () {
                      if(_formKey.currentState!.validate()){
                        Get.to(HomePage());
                      }
                    }),
                  ],
                )
            )

          ],
        ),
      ),
    );
  }
}
