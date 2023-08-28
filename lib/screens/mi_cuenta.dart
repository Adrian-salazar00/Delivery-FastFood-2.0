import 'package:flutter/material.dart';

class MiCuenta extends StatefulWidget {
  const MiCuenta({super.key});
//
  @override
  State<MiCuenta> createState() => _seccionesState();
}

class _seccionesState extends State<MiCuenta> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 195, 28, 28),
        //title: const Text('Mi cuenta'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // CircleAvatar(

              //   radius: 35,
              //   child: Text(
              //     'A',
              //     style: TextStyle(fontSize: 40),
              //   ),
              // ),
              //Center(
              /*child:*/
              const UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.transparent),
                accountName: Text('Adrian Salazar',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black)),
                accountEmail: Text('salazar.@gamil.com',
                    style: TextStyle(fontSize: 14, color: Colors.black)),
                currentAccountPicture: CircleAvatar(
                  child: Text(
                    'A',
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              //),
              //Image(image: AssetImage('assets/cupon.png')),
              const SizedBox(
                height: 40,
              ),
              const ListTile(title: Text('Mi cuenta')),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Informacion Personal'),
                onTap: () => {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
