import 'package:flutter/material.dart';
import 'package:flutter_blog/size.dart';
import 'package:flutter_blog/view/pages/post/detail_page.dart';
import 'package:flutter_blog/view/pages/post/write_page.dart';
import 'package:flutter_blog/view/pages/user/login_page.dart';
import 'package:flutter_blog/view/pages/user/user_info.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // 페이지 내에서만 사용할거면 메소드로 빼고
  // 다른 페이지에서도 사용할거면 위젯으로 빼는게 좋다.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: _navigation(context),
        appBar: AppBar(
          title: Text('앱 타이틀'),
        ),
        body: ListView.separated(
          itemCount: 20,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Get.to(DetailPage(index),
                    arguments: 'arguments 속성 테스트 데이터 넘기기');
              },
              title: Text('제목 $index'),
              leading: Text('$index'),
            );
          },
          separatorBuilder: (context, index) {
            return Divider();
          },
        ));
  }

  Widget _navigation(BuildContext context) {
    return Container(
      width: getDrawerWidth(context),
      height: double.infinity,
      color: Colors.white,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                  onPressed: () {
                    Get.to(WritePage());
                  },
                  child: Text(
                    '글쓰기',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )),
              Divider(),
              TextButton(
                  onPressed: () {
                    Get.to(UserInfo());
                  },
                  child: Text(
                    '회원 정보 보기',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )),
              Divider(),
              TextButton(
                  onPressed: () {
                    Get.to(LoginPage());
                  },
                  child: Text(
                    '로그아웃',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54),
                  )),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
