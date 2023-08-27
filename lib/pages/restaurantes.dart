// import 'package:delivery_fast_food/presentacion/search_restaurantes_delegate.dart';
// import 'package:flutter/material.dart';

// class Restaurantes extends StatelessWidget {
//   const Restaurantes({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final colors = Theme.of(context).colorScheme;
//     final titlesStyle = Theme.of(context).textTheme.titleMedium;

//     return SafeArea(
//         bottom: true,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 10),
//           child: SizedBox(
//             width: double.infinity,
//             child: Row(
//               children: [
//                 Icon(Icons.restaurant, color: colors.primary),
//                 const SizedBox(width: 5),
//                 Text('Restaurantes', style: titlesStyle),
//                 const Spacer(),
//                 IconButton(
//                     onPressed: () {
//                       showSearch(
//                           context: context,
//                           delegate: SearchRestaurantDelegate());
//                     },
//                     icon: const Icon(Icons.search))
//               ],
//             ),
//           ),
//         ));
//   }
// }
