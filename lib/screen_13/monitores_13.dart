import 'package:flutter/material.dart';

class MonitoresScreen_13 extends StatelessWidget {
  const MonitoresScreen_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monitores'),
        actions: const [
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://as01.epimg.net/meristation/imagenes/2013/09/17/noticia/1379397600_125748_1532601596_portada_normal.jpg'),
          )
        ],
      ),
      body: Center(
        child: ListView(children: [
          Column(
            children: const [
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage(
                    'https://www.rctb1899.es/sites/default/files/noticia/imatge//2495_1.jpg'),
              ),
              Text('Rafael Nadal'),
              SizedBox(
                height: 10,
              ),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage:
                    NetworkImage('https://nolose.es/giselapulido.jpg'),
              ),
              Text('Guisela Pulido'),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage(
                    'https://piks-eldesmarqueporta.netdna-ssl.com/thumbs/o/1200/bin/2019/06/20/raul_gonzalez_blanco__001.jpg'),
              ),
              Text('Raúl González'),
              SizedBox(
                height: 20,
              ),
              CircleAvatar(
                maxRadius: 120,
                backgroundImage: NetworkImage(
                    'https://img2.rtve.es/imagenes/doblete-oro-mireia-belmonte/1292451570832.jpg'),
              ),
              Text('Mireia Belmonte')
            ],
          ),
        ]),
      ),
    );
  }
}
