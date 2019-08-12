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
            height: 250,
            child: Card(
              child: _listTile(carro),
            ),
          );
        });
  }

  _listTile(Carro carro) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Expanded(
          flex: 9,
          child: Image.network(carro.urlFoto),
        ),
        Expanded(
          flex: 3,
          child: Container(
            color: Colors.grey,
            child: Center(
              child: Text(
                carro.nome,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25
                ),
              ),
            ),
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
