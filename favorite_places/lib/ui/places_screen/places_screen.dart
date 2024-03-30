import 'package:favorite_places/ui/add_place_screen/add_place_screen.dart';
import 'package:favorite_places/ui/places_screen/places_list.dart';
import 'package:flutter/material.dart';

class PlacesScreen extends StatelessWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Places'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (ctx) => const AddPlaceScreen()));
            },
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: const Padding(
        padding: EdgeInsets.all(8),
        child: PlacesList(),
      ),
    );
  }
}
