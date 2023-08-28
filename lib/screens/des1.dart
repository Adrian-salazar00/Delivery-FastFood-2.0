import 'package:flutter/material.dart';

class Descripcion1 extends StatelessWidget {
  const Descripcion1({super.key});

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
        body: SafeArea(
            top: false,
            child: Column(
              children: [
                Image.asset('assets/res1.png'),
                const SizedBox(height: 20),
                const Title(),
                const SizedBox(height: 20),
                const ButtonSection(),
                Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const Text(
                        'Buena comida rápida peruana, si quieres algo sencillo y rápido pero sin dejar a un lado el buen sabor. Tienen pocas opciones de sandwich pero están bien hechas, acompañado con papas andinas y una gran opcion de salsas peruanas.',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold))),
              ],
            )));
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
                'La Salsa Sanguchera',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Lima, Perú',
                style: TextStyle(color: Colors.blue),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('2.5k')
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
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
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
    super.key,
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
