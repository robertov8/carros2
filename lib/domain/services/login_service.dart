import 'dart:convert';
import 'package:carros/domain/response.dart';
import 'package:http/http.dart' as http;

class LoginService {
  static Future<Response> login(String login, String senha) async {
    String url = 'http://livrowebservices.com.br/rest/login';

    final response = await http.post(url, body: { 'login': login, 'senha': senha });
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    final Map<String, dynamic> map = json.decode(response.body);

    return Response.fromJson(map);
  }
}