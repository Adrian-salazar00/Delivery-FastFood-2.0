import 'package:flutter/material.dart';

class NameText extends StatelessWidget {
  final String texto;
  const NameText({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(children: [
        Text(
          texto,
          textAlign: TextAlign.justify,
          style: const TextStyle(
              fontSize: 15, color: Colors.white, fontWeight: FontWeight.w500),
        )
      ]),
    );
  }
}
