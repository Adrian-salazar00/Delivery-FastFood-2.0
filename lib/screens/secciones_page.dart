import 'package:flutter/material.dart';

// ignore: camel_case_types
class secciones extends StatefulWidget {
  const secciones({super.key});
//
  @override
  State<secciones> createState() => _seccionesState();
}

// ignore: camel_case_types
class _seccionesState extends State<secciones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(
            255, 195, 28, 28), //aumente el const antes del Color
        title:
            const Text('lista de Productos'), //aumente el const antes del Text
      ),
      body: const Center(
        child: SizedBox(
          //cambie el container por un SizedBox
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/sistema.png')),
              Text(
                'Sistema en mantenimiento, trabajamos por mejorar nuestro servicio',
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

    /* 
    ListView.builder(
          shrinkWrap: true,
          itemCount: _pressedButtons.length,
          itemBuilder: (context, index) {}
          children: <Widget>[
           Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sopa de Res',
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('S/. 10'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outline)),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Card(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                height: 85,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sopa de Res',
                      style: TextStyle(fontWeight: FontWeight.w800),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('S/. 10'),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.add_circle_outline)),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
     */
