import 'package:examen_13/screen_13/screen_13.dart';
import 'package:flutter/material.dart';

class SingScreen_13 extends StatelessWidget {
  const SingScreen_13({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final myFormKey_13 = GlobalKey<FormState>();
    final Map<String, String> formValues = {
      'usuario': 'Usuario',
      'password': '123456',
    };
    return Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
            child: Column(
              children: [
                const FlutterLogo(
                  size: 100,
                ),
                const SizedBox(height: 12),
                Form(
                  key: myFormKey_13,
                  child: Column(children: [
                    CustomTextFormField_13(
                      hintText: 'Usuario',
                      suffixIcon: Icons.group_add_outlined,
                      formProperty: 'usuario',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    CustomTextFormField_13(
                      hintText: 'Password',
                      obscuereText: true,
                      formProperty: 'password',
                      formValues: formValues,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      child: const SizedBox(
                          width: double.maxFinite,
                          child: Center(child: Text('Sign in'))),
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());
                        if (!myFormKey_13.currentState!.validate()) {
                          print('Formulario no valido');
                          return;
                        }
                        print(formValues);
                        final route = MaterialPageRoute(
                            builder: (context) => const ListViewScreen_13());
                        Navigator.push(context, route);
                      },
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ));
  }
}
