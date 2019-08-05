import 'package:http/http.dart' as http;

class LoginService {
  static Future<bool> login(String login, String senha) async {
    String url = 'http://livrowebservices.com.br/rest/login';

    final response = await http.post(url, body: { 'login': login, 'senha': senha });
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');

    return true;
  }
}