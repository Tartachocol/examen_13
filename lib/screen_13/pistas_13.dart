import 'package:examen_13/widgets_13/widgets_13.dart';
import 'package:flutter/material.dart';

class PiastasScreen_13 extends StatelessWidget {
  const PiastasScreen_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Widget')),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCard_13(
            imageUrl: 'https://allforpadel.com/img/cms/pistas/fx2-1.jpg',
            nombre: 'Pista de pádell',
          ),
          CustomCard_13(
            imageUrl:
                'https://barbastro.org/images/areas/deportes/Piscina_climatizada_Large.jpg',
            nombre: 'Pista Descubierta',
          ),
          CustomCard_13(
            imageUrl:
                'https://grupopineda.eu/wp-content/uploads/2020/04/shutterstock_1832966869.jpg',
            nombre: 'Pista de baloncesto',
          )
        ],
      ),
    );
  }
}
