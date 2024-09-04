import 'dart:convert';
import 'package:testlab/varbles.dart';
import 'package:http/http.dart' as http;
class AuthService {
  //final String apiURL; // เพิ่มตัวแปรเพื่อเก็บ URL ของ API
  //AuthService(this.apiURL); // สร้างคอนสตรัคเตอร์เพื่อรับ apiURL

  Future<void> login(String username, String password) async {
    print(apiURL);
    print(username);
    print(password);

    final response = await http.post(
      Uri.parse("$apiURL/api/auth/login"),
      headers: {"Content-Type": "application/json"}, // ใช้ headers แทน header
      body: jsonEncode(
        // ใช้ body แทนการพิมพ์ผิด
        {
          "user_name": username,
          "password": password,
        },
      ),
    );
    print(response.statusCode);
    print(response.body);
  }
}
    // final response = await http.post(Uri.parse("$apiURL/api/auth/login"),
    //     headers: {"Content-Type": "application/json"},
    //     body: jsonEncode(
    //       {
    //         "user_name": username,
    //         "password": password,
    //       },
    //     ));
    // print(response.statusCode);

