import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesNotifier extends StateNotifier<List<Place>> {
  PlacesNotifier() : super([]);
  var loading = true;

  String? validatePlaceName(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.trim().length <= 1 ||
        value.length > 50) {
      return 'Must be between 1 and 50 characters';
    }
    return null;
  }

  void submitForm(GlobalKey<FormState> key) {
    final formState = key.currentState!;

    if (formState.validate()) {
      key.currentState!.save();
    }
  }

  void addPlace(String name) {
    Place place = Place(name: name);
    state = [place, ...state];
  }
}

final placesProvider = StateNotifierProvider<PlacesNotifier, List<Place>>(
  (ref) => PlacesNotifier(),
);
