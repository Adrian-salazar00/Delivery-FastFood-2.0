import 'package:flutter/material.dart';

class MisCupones extends StatefulWidget {
  const MisCupones({super.key});
//
  @override
  State<MisCupones> createState() => _seccionesState();
}

class _seccionesState extends State<MisCupones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 195, 28, 28),
        title: Text('Mis Cupones'),
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(image: AssetImage('assets/cupon.png')),
              SizedBox(
                height: 150,
              ),
              Text(
                'No tienes cupones',
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
