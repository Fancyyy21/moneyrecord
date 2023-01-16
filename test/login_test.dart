import 'package:flutter_test/flutter_test.dart';
import 'package:moneyrecord/presentation/page/auth/login_page.dart';

void main(){
  LoginPage p;
  p = LoginPage();

  test("inisialisasi login page", (){
    expect(p.email, equals("username"));
  });
} 