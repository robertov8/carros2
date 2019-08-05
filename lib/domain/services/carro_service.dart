import 'package:carros/domain/carro.dart';

class CarroService {
  static List<Carro> getCarros() {
    final carros = List.generate(50, (index) {
      String url = 'http://www.livroandroid.com.br/livro/carros/esportivos/Ferrari_FF.png';
      return Carro('Ferrari $index', url);
    });

    return carros;
  }
}