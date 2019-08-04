import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  final _tLogin = TextEditingController(text: 'roberto');
  final _tSenha = TextEditingController(text: '123');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: _body(),
      ),
    );
  }

  _body() {
    return Form(
      child: ListView(
        children: <Widget>[
          _textFormFieldLogin(),
          _textFormFieldPassword(),
          _loginButton(),
        ],
      ),
    );
  }

  TextFormField _textFormFieldLogin() {
    return TextFormField(
      controller: _tLogin,
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

  _loginButton() {
    return Container(
      height: 50,
      margin: EdgeInsets.only(top: 20),
      child: RaisedButton(
        onPressed: () => _onClickLogin(),
        color: Colors.blue,
        child: Text(
          'Login',
          style: TextStyle(color: Colors.white, fontSize: 25),
        ),
      ),
    );
  }

  _onClickLogin() {
    final login = _tLogin.text;
    final senha = _tSenha.text;

    print('Login: $login, $senha');
  }
}
