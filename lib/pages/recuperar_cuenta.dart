import 'package:flutter/material.dart';
import 'package:delivery_fast_food/pages/login_page.dart';

class RecuperarCuenta extends StatefulWidget {
  const RecuperarCuenta({super.key});
//
  @override
  State<RecuperarCuenta> createState() => _seccionesState();
}

class _seccionesState extends State<RecuperarCuenta> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          title: const Text(
            'Delivery FastFood',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                'Introduce tu correo',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                //obscureText: _isSecurePassword,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Center(
              // Envuelve los botones en un Center
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 120,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LoginPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Cancelar',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 120, //
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Text(
                        'Buscar',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
