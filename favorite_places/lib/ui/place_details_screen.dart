import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';

class PlaceScreen extends StatelessWidget {
  final Place place;

  const PlaceScreen({
    super.key,
    required this.place,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: Stack(
        children: [
          Image.file(
            place.imageFile,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          )
        ],
      ),
    );
  }
}
