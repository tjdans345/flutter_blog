import 'package:flutter/material.dart';
import 'package:flutter_blog/util/validator_util.dart';
import 'package:flutter_blog/view/components/custom_elevated_button.dart';
import 'package:flutter_blog/view/components/custom_text_form_field.dart';
import 'package:flutter_blog/view/components/custom_textarea.dart';
import 'package:get/get.dart';


class UpdatePage extends StatelessWidget {
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
                    CustomTextFormField(hint: "Title", funValidator: validateTitle(), value: "제목",),
                    CustomTextArea(hint: 'Content', funValidator: validateContent(), value: '내용' * 20,),
                    SizedBox(height: 20,),
                    CustomElevatedButton(
                        text: '글 수정하기', funPageRoute: () {
                      if(_formKey.currentState!.validate()){
                        Get.back();
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
