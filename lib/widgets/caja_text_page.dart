import 'package:flutter/material.dart';

class Cajatexto extends StatelessWidget {
  final String relleno;
  final Icon iconos;
  final bool fv;
  const Cajatexto({
    super.key,
    required this.relleno,
    required this.iconos,
    required this.fv,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
            child: TextField(
          obscureText: fv,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(60)),
                  borderSide: BorderSide(width: 3, color: Colors.white)),
              fillColor: Colors.transparent,
              //filled: true,
              hintText: (relleno),
              hintStyle: const TextStyle(color: Colors.white),
              icon: iconos,
              iconColor: const Color.fromARGB(2, 3, 4, 0)),
        ))
      ],
    );
    //padding: EdgeInsets.only(left: 40, right: 40),
  }
}
