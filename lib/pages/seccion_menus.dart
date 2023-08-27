import 'package:flutter/material.dart';

class Cards {
  String title;
  String content;

  Cards(this.title, this.content);
}

// ignore: camel_case_types
class manus extends StatefulWidget {
  const manus({super.key});

  @override
  State<manus> createState() => _manusState();
}

// ignore: camel_case_types
class _manusState extends State<manus> {
  List<Card> cardList = [];
  final List<String> dataList = [
    'GALLINA ASADA',
    'INCHICAPI DE GALLINA',
    'MAZAMORRA DE GAMITANA',
    'ZARAPATERA DE MOTELO',
    'CHAUFA REGIONAL',
    'JUANE',
    'TACACHO',
    'CHAUFA CON POLLO',
    'CECINA CON TACACHO',
    'CALDO DE GALLINA',
    'MILANESA',
    'TALLARIN VERDE CON CHANCHO',
    'TALLARIN ROJO CON POLLO',
    'LOMO SALTADO',
    'BISTEC',
    'AJI DE GALLINA',
    'ARROS CON POLLO',
  ];
  final List<String> dataLista = [
    'S/.12',
    'S/.15',
    'S/.13',
    'S/.12',
    'S/.15',
    'S/.13',
    'S/.12',
    'S/.12',
    'S/.15',
    'S/.13',
    'S/.12',
    'S/.15',
    'S/.13',
    'S/.12',
    'S/.14',
    'S/.15',
    'S/.13',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 195, 28, 28),
        title: const Text('MENU DEL DIA'), //aumente el const antes del Text
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder(
          itemCount: dataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Card(
                  child: ListTile(
                    title: Text(dataList[index]),
                    subtitle: Text(dataLista[index]),
                    trailing: IconButton(
                        onPressed: () {
                          Card newCard =
                              const Card(); // Crear el nuevo card y const
                          cardList.add(newCard);
                        },
                        icon: const Icon(Icons
                            .add_circle_outline_sharp)), //aumente const antes del Icon
                  ),
                ),
              ],
            );
            //print(dataList.join(','));
          },
        ),
      ),
    );
  }
}
