import 'package:carros/alerts.dart';
import 'package:carros/domain/login_service.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController(text: '');
  final _tSenha = TextEditingController(text: '');
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: _body(context),
      ),
    );
  }

  String _validateLogin(String text) {
    if (text.isEmpty) {
      return 'Informe o login';
    }

    return null;
  }

  String _validateSenha(String text) {
    if (text.length < 2) {
      return 'Senha precisa ter mais de 2 números';
    }

    return null;
  }

  _body(BuildContext context) {
    return Form(
      key: _formKey,
      child: ListView(
        children: <Widget>[
          _textFormFieldLogin(),
          _textFormFieldPassword(),
          _loginButton(context),
        ],
      ),
    );
  }

  TextFormField _textFormFieldLogin() {
    return TextFormField(
      controller: _tLogin,
      validator: _validateLogin,
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        labelText: 'Login',
        labelStyle: TextStyle(color: Colors.black, fontSize: 25),
        hintText: 'Digite o seu login',
        hintStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
      style: TextStyle(
        color: Colors.blue,
        fontSize: 25,
      ),
    );
  }

  TextFormField _textFormFieldPassword() {
    return TextFormField(
      controller: _tSenha,
      validator: _validateSenha,
      obscureText: true,
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        labelText: 'Senha',
        labelStyle: TextStyle(color: Colors.black, fontSize: 25),
        hintText: 'Digite a sua senha',
        hintStyle: TextStyle(color: Colors.black, fontSize: 18),
      ),
      style: TextStyle(
        color: Colors.blue,
        fontSize: 25,
      ),
    );
  }

  _loginButton(BuildContext context) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 20),
      child: RaisedButton(
        onPressed: () => _onClickLogin(context),
        color: Colors.blue,
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  _onClickLogin(BuildContext context) async {
    final login = _tLogin.text;
    final senha = _tSenha.text;

    if (!_formKey.currentState.validate()) {
      return;
    }

    print('Login: $login, $senha');

    final response = await LoginService.login(login, senha);

    if (response.isOk()) {
      print('Entrar na home!!!.');
    } else {
      alert(context, 'Erro', response.msg);
    }
  }
}
