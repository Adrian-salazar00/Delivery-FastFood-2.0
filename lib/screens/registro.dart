import 'package:flutter/material.dart';
import 'package:delivery_fast_food/screens/login_page.dart';

class Registro extends StatefulWidget {
  @override
  _Registro createState() => _Registro();
}

class _Registro extends State<Registro> {
  TextEditingController usuario = TextEditingController();
  TextEditingController pass = TextEditingController();
  bool _isSecurePassword = true;
  final emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Registo Usuario'),
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 50, right: 10),
              child: TextField(
                controller: usuario,
                decoration: InputDecoration(
                    labelText: 'Nombre',
                    hintText: 'Escriba su nombre',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Correo',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  //prefixIcon: Icon(Icons.email),
                ),
                validator: (value) {
                  bool emailValid = RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                      .hasMatch(value!);

                  if (value.isEmpty) {
                    return 'Ingrese un correo';
                  } else if (!emailValid) {
                    return 'Ingrese un correo valido';
                  }
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Celular',
                  hintText: 'Ingrese el número de celular',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
              child: TextFormField(
                obscureText: _isSecurePassword,
                controller: pass,
                decoration: InputDecoration(
                  labelText: 'Contaseña',
                  hintText: 'Ingrese contraseña',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        _isSecurePassword = !_isSecurePassword;
                      });
                    },
                    icon: _isSecurePassword
                        ? const Icon(Icons.visibility)
                        : const Icon(Icons.visibility_off),
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            // Padding(
            //   padding: EdgeInsets.only(left: 10, top: 10, right: 10),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       labelText: 'Correo',
            //       hintText: 'Ingrese su correo electronico',
            //       border: OutlineInputBorder(
            //           borderRadius: BorderRadius.circular(20)),
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginPage()),
                  )
                },
                child: const Text('Crear cuenta'),
              ),
            ),
          ],
        )));
  }
}
