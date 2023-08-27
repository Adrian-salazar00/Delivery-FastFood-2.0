import 'package:flutter/material.dart';

// ignore: camel_case_types
class MisFavoritos extends StatefulWidget {
  const MisFavoritos({super.key});
//
  @override
  State<MisFavoritos> createState() => _seccionesState();
}

// ignore: camel_case_types
class _seccionesState extends State<MisFavoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 195, 28, 28),
        title: Text('Mis Favoritos'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/favorito.png')),
              SizedBox(
                height: 150,
              ),
              Text(
                'Aún no tienes favoritos',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
