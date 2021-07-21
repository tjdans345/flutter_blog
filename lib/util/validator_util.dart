import 'package:validators/validators.dart';


Function validateName() {
  return (String? value) {
    if(value!.isEmpty) {
      return '공백이 들어갈 수 없습니다.';
    } else if(!isAlphanumeric(value)) {
      return '유저네임에 한글이나 특수 문자가 들어갈 수 없습니다';
    } else if(value.length > 12) {
      return '유저네임 길이를 초과했습니다. ';
    } else if(value.length < 4) {
      return '유저네임 최소 길이는 4자입니다.';
    } else {
      return null;
    }
  };
}

Function validatePassword() {
  return (String? value) {
    if(value!.isEmpty) {
      return '공백이 들어갈 수 없습니다.';
    } else if(value.length > 12) {
      return '비밀번호 길이를 초과했습니다.';
    } else if(value.length < 4) {
      return '비밀번호 최소 길이는 4자입니다.';
    } else {
      return null;
    }
  };
}

Function validateEmail() {
  return (String? value) {
    if(value!.isEmpty) {
      return '공백이 들어갈 수 없습니다.';
    } else if(!isEmail(value)) {
      return '이메일 형식에 맞지 않습니다.';
    }
  };
}