import 'package:get/get.dart';

const url = "http://192.168.123.100:8080";

class UserProvider extends GetConnect {

  // Future 타입은 미래데이터를 약속하는 것이다.
  // null이 들어왔다가 통신이 완료되면 데이터가 바뀐다
  // Promise (데이터를 약속 받는 것)
  Future<Response> login(Map data) => post("$url/login", data);


  // Future<Response> login(Map data) {
  //   return post("$host", data);
  // }




}