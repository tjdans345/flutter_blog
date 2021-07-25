import 'package:flutter/material.dart';
import 'package:flutter_blog/view/pages/post/home_page.dart';
import 'package:flutter_blog/view/pages/post/update_page.dart';
import 'package:get/get.dart';

class DetailPage extends StatelessWidget {
  final int id;

  const DetailPage(this.id);

  @override
  Widget build(BuildContext context) {
    //Get arguments 받을 때 타입을 정해서 받으면 된다.

    //String data = Get.arguments;

    return Scaffold(
        appBar: AppBar(
          title: Text('앱바'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text('글 제목!!', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),),
              Row(

                children: [
                  ElevatedButton(onPressed: () {
                    Get.off(UpdatePage());
                  }, child: Text('수정')),
                  ElevatedButton(onPressed: () {
                    //뒤로 가기는 객체 생성이 아니기때문에 갱신이 안될 수 도 있다.
                    // Get.to(HomePage());
                    Get.to(HomePage()); // but 상태관리로 갱신 시킬 수 있음.
                  }, child: Text('삭제')),
                ],
              ),
              Expanded(child: SingleChildScrollView(child: Text('글 내용!!!'*5000))),
            ],
          ),
        ));
  }
}
