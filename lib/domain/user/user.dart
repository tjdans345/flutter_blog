import 'package:intl/intl.dart';

class User {
  //final은 반드시 초기화가 되어야한다.
  final int? id;
  final String? userName;
  final String? email;
  final DateTime? created;
  final DateTime? updated;

  User(
      //{} <<<선택적 매개변수 받아도 되고 안받아도 된다
      {this.id,
      this.userName,
      this.email,
      this.created,
      this.updated});

  //통신을 위해서 json 처럼 생긴 문자열 {"id":1} => Dart 오브젝트로 변경하는 과정이 필요하다
  //dart 문법 강의도 듣기

User.fromJson(Map<String, dynamic> json)
  : id = json["id"],
    userName = json["username"],
    email = json["email"],
    created = DateFormat("yyy-mm-dd").parse(json["created"]),
    updated = DateFormat("yyy-mm-dd").parse(json["updated"]);


}
