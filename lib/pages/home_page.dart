import 'package:carros/domain/carro.dart';
import 'package:carros/domain/services/carro_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Carros'),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: _listView(),
      ),
    );
  }

  _listView() {
    final carros = CarroService.getCarros();

    return ListView.builder(
        itemCount: carros.length,
        itemBuilder: (BuildContext context, index) {
          final carro = carros[index];

          return Container(
            child: Card(
              child: _listTile(carro),
            ),
          );
        });
  }

  _listTile(Carro carro) {
    return Padding(
      padding: const EdgeInsets.only(left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(carro.urlFoto),
          Text(
            carro.nome,
            style: TextStyle(
                color: Colors.black,
                fontSize: 25
            ),
          ),
          Text(
            'Descrição...',
            style: TextStyle(
                color: Colors.black,
                fontSize: 16
            ),
          ),
          ButtonTheme.bar(
            child: ButtonBar(
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: const Text('DETALHES'),
                ),
                FlatButton(
                  onPressed: () {},
                  child: const Text('SHARE'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

/*
ListTile(
          leading: Image.network(
            carro.urlFoto,
            width: 150,
          ),
          title: Text(
            carro.nome,
            style: TextStyle(
              color: Colors.blue,
              fontSize: 25,
            ),
          ),
          subtitle: Text(
            "descrição",
            style: TextStyle(
              color: Colors.black,
              fontSize: 16,
            ),
          ),
        ),
*/
