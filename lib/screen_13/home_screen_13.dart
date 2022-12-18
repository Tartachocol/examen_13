import 'package:examen_13/screen_13/screen_13.dart';
import 'package:examen_13/screen_13/sign_up_13.dart';
import 'package:flutter/material.dart';

class HomeScreen_13 extends StatelessWidget {
  const HomeScreen_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const FlutterLogo(
                size: 100,
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                child: const SizedBox(
                  width: 100,
                  child: Center(child: Text('Sign in')),
                ),
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const SingScreen_13());
                  Navigator.push(context, route);
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                child: const SizedBox(
                  width: 100,
                  child: Center(
                    child: Text('Sing up'),
                  ),
                ),
                onPressed: () {
                  final route = MaterialPageRoute(
                      builder: (context) => const SingUpScreen_13());
                  Navigator.push(context, route);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
