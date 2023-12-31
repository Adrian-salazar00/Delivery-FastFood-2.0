import 'package:delivery_fast_food/presentacion/search_restaurantes_delegate.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final titlesStyle = Theme.of(context).textTheme.titleMedium;

    return Material(
        //top: false,
        // bottom: false,
        child: Column(
      children: [
        // AppBar(
        //   title: const Text('hola'),
        //   leading: IconButton(
        //       onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new)),
        // ),

        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SizedBox(
            width: double.infinity,
            child: Row(
              children: [
                //const SizedBox(width: 10),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.arrow_back_ios_new)),
                const SizedBox(width: 20),
                Icon(Icons.restaurant, color: colors.primary),
                const SizedBox(width: 5),
                Text('Restaurantes', style: titlesStyle),
                const Spacer(),
                IconButton(
                    onPressed: () {
                      showSearch(
                          context: context,
                          delegate: SearchRestaurantDelegate());
                    },
                    icon: const Icon(Icons.search))
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
