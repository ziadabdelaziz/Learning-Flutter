import 'dart:io';

import 'package:favorite_places/models/place.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesNotifier extends StateNotifier<List<Place>> {
  PlacesNotifier() : super([]);
  var loading = true;
  File? image;
  String? name;
  var location;

  String? validatePlaceName(String? value) {
    if (value == null ||
        value.isEmpty ||
        value.trim().length <= 1 ||
        value.length > 50) {
      return 'Must be between 1 and 50 characters';
    }
    return null;
  }

  bool validateImage() {
    return !(image == null);
  }

  bool submitForm(GlobalKey<FormState> key) {
    final formState = key.currentState!;

    if (!formState.validate() || !validateImage()) {
      return false;
    }

    key.currentState!.save();
    _addPlace();

    return true;
  }

  void _addPlace() {
    Place place = Place(name: name!, imageFile: image!);
    state = [place, ...state];
    print('added');
  }
}

final placesProvider = StateNotifierProvider<PlacesNotifier, List<Place>>(
  (ref) => PlacesNotifier(),
);
