import 'package:flutter/material.dart';

class Descripcion3 extends StatelessWidget {
  const Descripcion3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: true,
          title: const Text(''),
        ),
        body: Column(
          children: [
            Image.asset('assets/res3.png'),
            const Title(),
            const SizedBox(
              height: 20,
            ),
            const ButtonSection(),
            const SizedBox(
              height: 20,
            ),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                    "Las comidas rapidas que venden en las calles mayormente no son de buena salud, las familias pueden estar en peligro de salud, cada vez que quieres consumir tienes que tener en cuenta si los sándwiches y otros deben estar en buena condiciones. Por eso nos ponemos dentro del mercado de CHORIPANES de lo cual degustan los jovenes y familias en general pensando en el paladar de todos nuestros clientes. ",
                    style:
                        TextStyle(fontSize: 22, fontWeight: FontWeight.bold))),
          ],
        ));
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'El Choripan: El Arte del Sabor',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Iquitos, Perú',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('2k')
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButton(
              icon: Icons.call,
              text: 'Llamar',
            ),
            CustomButton(
              icon: Icons.map_sharp,
              text: 'Ruta',
            ),
            CustomButton(
              icon: Icons.share,
              text: 'Compartir',
            ),
          ]),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Icon(
        this.icon,
        color: Colors.blue,
        size: 30,
      ),
      Text(
        this.text,
        style: TextStyle(color: Colors.blue),
      )
    ]);
  }
}
