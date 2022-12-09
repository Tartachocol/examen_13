import 'package:examen_13/screen_13/screen_13.dart';
import 'package:flutter/material.dart';

class HomeScreen_13 extends StatelessWidget {
  const HomeScreen_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(
            children: [
              const FlutterLogo(
                size: 200,
              ),
              ElevatedButton(
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const SingScreen_13());
                  Navigator.push(context, route);
                },
                child: const Text('Sig in'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('login'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
