import 'package:flutter/material.dart';

class SearchRestaurantDelegate extends SearchDelegate {
  List<String> allData = ['Restaurante 1', 'Restaurante 2', 'Restaurante 3'];

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      const Text('BuildActions'),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return const Text('BuildLeading');
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('BuildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return const Text('BuildSuggestions');
  }
}
