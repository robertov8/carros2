import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
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
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Login',
              labelStyle: TextStyle(color: Colors.blue, fontSize: 25),
              hintText: 'Digite o seu login',
              hintStyle: TextStyle(color: Colors.black, fontSize: 18),
            ),
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          ),
          TextFormField(
            obscureText: true,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Senha',
              labelStyle: TextStyle(color: Colors.blue, fontSize: 25),
              hintText: 'Digite a sua senha',
              hintStyle: TextStyle(color: Colors.black, fontSize: 18),
            ),
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          )
        ],
      ),
    );
  }
}
