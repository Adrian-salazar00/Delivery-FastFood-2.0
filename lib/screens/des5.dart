import 'package:flutter/material.dart';

class Descripcion5 extends StatelessWidget {
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
            Image.asset('assets/res5.png'),
            const SizedBox(
              height: 20,
            ),
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
                  'Ya estamos atendiendo mi gente chevere de Iquitos, ven y disfruta nuestras deliciosas Salchipapas, choripapas, broasters, hamburguesas y sándwich en el mejor Fast Food de la ciudad "El Indiecito Fast Food ".',
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
                'El Indiecito Fast Food',
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
          const Text('3.5k')
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
