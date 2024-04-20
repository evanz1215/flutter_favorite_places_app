import 'package:flutter/material.dart';
import 'package:flutter_favorite_places_app/screens/add_place.dart';
import 'package:flutter_favorite_places_app/widgets/places_list.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()));
            },
          ),
        ],
      ),
      body: const PlacesList(places: []),
    );
  }
}
