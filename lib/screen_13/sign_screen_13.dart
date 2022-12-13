import 'dart:html';

import 'package:examen_13/screen_13/screen_13.dart';
import 'package:flutter/material.dart';

class SingScreen_13 extends StatelessWidget {
  const SingScreen_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const FlutterLogo(
              size: 100,
            ),
            ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(
                    builder: (context) => const ListViewScreen_13());
                Navigator.push(context, route);
              },
              child: const Text('Sig in'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.close),
              label: Text(''),
            )
          ],
        ),
      ),
    );
  }
}
