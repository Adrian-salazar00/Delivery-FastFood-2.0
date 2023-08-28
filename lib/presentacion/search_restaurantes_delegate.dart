import 'package:flutter/material.dart';
import 'package:delivery_fast_food/screens/restaurantes.dart';

typedef SearchRestauranteCallback = Future<List<Restaurantes>> Function(
    String query);

class SearchRestaurantDelegate extends SearchDelegate<Restaurantes?> {
  // final SearchRestauranteCallback searchRestaurante;
  // SearchRestauranteCallback({
  //   required this.searchRestaurante,
  // });

  @override
  String get searchFieldLabel => 'Buscar Restaurante';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      if (query.isNotEmpty)
        IconButton(
          onPressed: () => query = '',
          icon: const Icon(Icons.clear),
        ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () => close(context, null),
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('data');
    //  const Scaffold(

    //     body: Column(
    //   children: [
    //     Center(
    //         child: Padding(
    //       padding: EdgeInsets.all(20),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         children: [
    //           SizedBox(height: 40),
    //           Text('La casa de las enchiladas'),
    //         ],
    //       ),
    //     )),
    //   ],
    //)
    //  );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text('BuildSuggestions');
  }
}
