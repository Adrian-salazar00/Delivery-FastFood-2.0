import 'package:flutter/material.dart';

class Descripcion4 extends StatelessWidget {
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
            Image.asset('assets/res4.png'),
            const SizedBox(height: 20),
            const Title(),
            const SizedBox(height: 20),
            const ButtonSection(),
            Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: const Text(
                  'Pizza Delivery te lleva la pizza calientito hasta la puerta de tu casa, ademas de contar con los productos más frescos para tener la mejor calidad, el mejor sabor y sobre todo a un muy buen precio siendo accesible para todos los consumidores.',
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
                'Pizza Delivery',
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
          const Text('2.2')
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
