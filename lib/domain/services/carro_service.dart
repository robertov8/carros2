import 'package:carros/domain/carro.dart';

class CarroService {
  static List<Carro> getCarros() {
    final carros = List.generate(50, (index) {
      String url = 'http://www.livroandroid.com.br/livro/carros/esportivos/Ferrari_FF.png';
      String url2 = 'https://cdn.motor1.com/images/mgl/ge9L4/s1/ferrari-f8-spider-fan-render.jpg';
      return Carro('Ferrari $index', url2);
    });

    return carros;
  }
}