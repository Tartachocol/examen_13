import 'package:flutter/material.dart';

class CustomCard_13 extends StatelessWidget {
  final String imageUrl;
  final String nombre;
  const CustomCard_13(
      {super.key, required this.imageUrl, required this.nombre});
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      elevation: 10,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/jar-loading.gif'),
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 100),
        ),
        ListTile(
          title: Text(nombre),
          subtitle: const Text(
              'Adipisicing sint quis fugiat esse nulla. Aliqua reprehenderit irure velit aliqua irure commodo nisi qui laborum laborum. Velit qui sit aute cillum nulla aliqua duis dolor.'),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: const Text('Reservar'),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
