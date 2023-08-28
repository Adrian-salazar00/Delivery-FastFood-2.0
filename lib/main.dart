import 'package:flutter/material.dart';
import 'package:delivery_fast_food/screens/login_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Material App",
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
