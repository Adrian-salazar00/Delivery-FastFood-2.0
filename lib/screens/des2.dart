import 'package:flutter/material.dart';

class Descripcion2 extends StatelessWidget {
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
            const SizedBox(height: 30),
            Image.asset('assets/res6.png'),
            const SizedBox(height: 20),
            const Title(),
            const SizedBox(height: 20),
            const ButtonSection(),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  'Disfruta de comida marina, criolla, hamburguesas, pastas, pizza, makis, pollo a la brasa y mucho más.Con agradable ambiente, buena atencion, buena musica, licores y carta de comidas de nuestra región.',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                )),
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
                'La Casa de las Enchiladas',
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
          const Text('1k')
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
    super.key,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
      Icon(
        icon,
        color: Colors.blue,
        size: 30,
      ),
      Text(
        text,
        style: const TextStyle(color: Colors.blue),
      )
    ]);
  }
}
