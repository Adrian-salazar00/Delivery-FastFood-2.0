import 'package:flutter/material.dart';
import 'package:delivery_fast_food/pages/home_page.dart';
import 'package:delivery_fast_food/pages/registro.dart';
import 'package:delivery_fast_food/pages/recuperar_cuenta.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formfiel = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passController = TextEditingController();
  bool passToggle = true;
  //bool _isLoading = false;

  // Future logIn() async {
  //   showDialog(
  //       context: context,
  //       builder: (context) {
  //         return Center(child: CircularProgressIndicator());
  //       });
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _emailController.text.trim(),
  //     password: _passController.text.trim(),
  //   );
  //   Navigator.of(context).pop();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('FastFood'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Form(
              key: _formfiel,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/FastFood.png',
                    width: 280,
                    height: 280,
                  ),
                  SizedBox(height: 30),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: const InputDecoration(
                      labelText: 'Correo',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.email),
                    ),
                    validator: (value) {
                      bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(value!);

                      if (value!.isEmpty) {
                        return 'Ingrese un correo';
                      } else if (!emailValid) {
                        return 'Ingrese un correo valido';
                      }
                    },
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passController,
                    obscureText: passToggle,
                    decoration: InputDecoration(
                        labelText: 'Contraseña',
                        border: const OutlineInputBorder(),
                        prefixIcon: const Icon(Icons.lock),
                        suffixIcon: InkWell(
                          onTap: () {
                            setState(() {
                              passToggle = !passToggle;
                            });
                          },
                          child: Icon(passToggle
                              ? Icons.visibility
                              : Icons.visibility_off),
                        )),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Ingrese una contraseña';
                      } else if (passController.text.length < 6) {
                        return 'La contraseña debe tener mas de 6 caracteres';
                      }
                    },
                  ),
                  const SizedBox(height: 60),
                  InkWell(
                      onTap: () {
                        if (_formfiel.currentState!.validate()) {
                          //print('Éxito!!');
                          emailController.clear();
                          passController.clear();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        }
                      },
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: const Center(
                            // child: _isLoading
                            //     ? CircularProgressIndicator()
                            // : Text(
                            //     'Ingresar',
                            //     style: TextStyle(
                            //       color: Colors.white,
                            //       fontSize: 20,
                            //       fontWeight: FontWeight.bold,
                            //     ),
                            //   )
                            child: Text(
                              'Ingresar',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ))),
                  const SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const RecuperarCuenta()));
                          },
                          child: const Text(
                            '¿Olvidaste tu contraseña?',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                  const SizedBox(height: 60),
                  const Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '¿No tienes una cuenta?',
                        style: TextStyle(fontSize: 17),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Registro()));
                          },
                          child: const Text(
                            'Registrate',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ))
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
