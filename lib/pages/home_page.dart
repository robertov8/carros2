import 'package:carros/domain/services/carro_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
      ),
      body: _listView(),
    );
  }

  _listView() {
    final carros = CarroService.getCarros();

    return ListView.builder(
        itemCount: carros.length,
        itemBuilder: (BuildContext context, index) {
          final carro = carros[index];

          return Text(
            carro.nome,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          );
        });
  }
}
