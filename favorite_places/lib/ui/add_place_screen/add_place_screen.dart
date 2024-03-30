import 'package:favorite_places/provider/places_provider.dart';
import 'package:favorite_places/ui/add_place_screen/image_input.dart';
import 'package:favorite_places/ui/add_place_screen/location_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerStatefulWidget {
  const AddPlaceScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AddPlaceScreenState();
}

class _AddPlaceScreenState extends ConsumerState<AddPlaceScreen> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add new Place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                style: TextStyle(
                    color: Theme.of(context).colorScheme.onBackground),
                decoration: const InputDecoration(
                  labelText: 'Title',
                ),
                maxLength: 50,
                validator: (value) =>
                    ref.watch(placesProvider.notifier).validatePlaceName(value),
                onSaved: (value) {
                  ref.watch(placesProvider.notifier).name = value;
                },
              ),
              const SizedBox(height: 16),
              // image picker
              const ImageInput(),
              const SizedBox(height: 32),
              // location
              const LocationInput(),
              const SizedBox(height: 16),
              // submit button
              ElevatedButton.icon(
                onPressed: () {
                  if (ref.watch(placesProvider.notifier).submitForm(formKey)) {
                    Navigator.of(context).pop();
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('An Error Occured!'),
                      ),
                    );
                  }
                },
                icon: const Icon(Icons.add),
                label: const Text('Add Place'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
