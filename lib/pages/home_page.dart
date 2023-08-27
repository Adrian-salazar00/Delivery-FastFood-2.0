// ignore_for_file: unnecessary_new
import 'package:delivery_fast_food/pages/restaurantes.dart';
import 'package:delivery_fast_food/widgets/custom_appbar.dart';
import 'package:flutter/material.dart';
import 'package:delivery_fast_food/pages/login_page.dart';
import 'package:delivery_fast_food/pages/seccion_menus.dart';
import 'package:delivery_fast_food/pages/secciones_page.dart';
import 'mi_cuenta.dart';
import 'mis_cupones.dart';
import 'mis_favoritos.dart';
import 'libro_reclamaciones.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      //FloatingAcitionButton

      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            //aumente el const antes del Text
            'Delivery FastFood',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const UserAccountsDrawerHeader(
                //decoration: BoxDecoration(color: Colors.transparent),
                accountName: Text('Adrian Salazar'),
                accountEmail: Text('salazar.@gamil.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Color.fromARGB(255, 116, 223, 22),
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(Icons.home),
                //selected: true,
                title: const Text('Inicio'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const HomePage()))
                },
              ),
              ListTile(
                leading: const Icon(Icons.list_alt),
                //selected: true,
                title: const Text('Mis pedidos'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const manus()))
                },
              ),
              ListTile(
                leading: const Icon(Icons.favorite_border),
                //selected: true,
                title: const Text('Mis favoritos'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MisFavoritos()))
                },
              ),
              ListTile(
                leading: const Icon(Icons.card_membership),
                //selected: true,
                title: const Text('Mis cupones'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const MisCupones()))
                },
              ),
              ListTile(
                leading: const Icon(Icons.person_outline),
                //selected: true,
                title: const Text('Mi cuenta'),
                onTap: () => {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const MiCuenta()))
                },
              ),
              ListTile(
                leading: const Icon(Icons.book),
                title: const Text('Libro de reclamaciones'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LibroReclamaciones()))
                },
              ),
              ListTile(
                leading: const Icon(Icons.logout_outlined),
                title: const Text('Cerrar sesión'),
                onTap: () => {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()))
                },
              )
            ],
          ),
        ),
        body: ListView(
          children: <Widget>[
            //const TextField(),
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10), //aumente el const antes del EdgeInsets
              height: 200,
              child:
                  ListView(scrollDirection: Axis.horizontal, children: <Widget>[
                Card(
                  color: const Color.fromARGB(172, 106, 150, 207),
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const CustomAppBar()));
                    },
                    child: SizedBox(
                      width: 110,
                      child: Column(
                        children: <Widget>[
                          const Text(
                            'Restaurantes',
                            style: TextStyle(
                              height: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Image.asset('assets/pollo.png'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(173, 225, 243, 95),
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const secciones()));
                    },
                    child: SizedBox(
                      width: 110,
                      child: Column(
                        children: [
                          const Text(
                            'Supermercados',
                            style: TextStyle(
                              height: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Image.asset('assets/super.png'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(173, 81, 70, 230),
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const secciones()));
                    },
                    child: SizedBox(
                      width: 100,
                      child: Column(
                        children: [
                          const Text(
                            'Envios',
                            style: TextStyle(
                              height: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Image.asset('assets/envio.png'),
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  color: const Color.fromARGB(173, 4, 223, 234),
                  child: new InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const secciones()));
                    },
                    child: SizedBox(
                      width: 100,
                      child: Column(
                        children: [
                          const Text(
                            'Bebidas',
                            style: TextStyle(
                              height: 3,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          Image.asset('assets/bebida.png'),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
            // ignore: avoid_unnecessary_containers
            Container(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  'Restaurantes Populares',
                  //textAlign: TextAlign.start,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    height: 3,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: SizedBox(
                        height: 180,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/res1.png'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 180,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/res2.jpeg'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 180,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/res3.png'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                  Card(
                    child: SizedBox(
                        height: 180,
                        child: Container(
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/res4.png'),
                                  fit: BoxFit.fill)),
                        )),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
