import 'package:flutter/material.dart';

// ignore: camel_case_types
class LibroReclamaciones extends StatefulWidget {
  const LibroReclamaciones({super.key});
//
  @override
  State<LibroReclamaciones> createState() => _seccionesState();
}

// ignore: camel_case_types
class _seccionesState extends State<LibroReclamaciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 195, 28, 28),
        title: Text('Libro de Reclamaciones'),
      ),
      body: const Center(
        // child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/libro.png')),
            SizedBox(
              height: 150,
            ),
            Text(
              '''Elit id dolore qui aute mollit magna labore velit quis enim Lorem consequat culpa qui. Adipisicing occaecat consequat elit occaecat. Ad ex excepteur eiusmod adipisicing et eiusmod reprehenderit. Adipisicing fugiat id in magna incididunt eu qui magna et est qui duis anim nulla. Nisi veniam deserunt minim dolore laborum labore do labore occaecat. Laboris sit proident ad occaecat elit voluptate incididunt laborum dolore veniam. 
                Aliqua ea et excepteur aliqua sint proident nisi minim labore pariatur sint sunt dolor veniam.
                
                
                Nostrud cupidatat veniam deserunt eiusmod. Non nisi laborum commodo qui commodo mollit tempor labore enim pariatur occaecat aliquip. Aliqua enim duis voluptate id mollit est. Sint dolore non elit dolore qui cupidatat. Est dolore tempor velit nostrud pariatur deserunt.''',
              textAlign: TextAlign.center,
              //style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            )
          ],
        ),
        //),
      ),
    );
  }
}
