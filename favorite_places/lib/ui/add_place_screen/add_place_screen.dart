import 'package:favorite_places/provider/places_provider.dart';
import 'package:favorite_places/ui/add_place_screen/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AddPlaceScreen extends ConsumerWidget {
  AddPlaceScreen({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
                  ref.watch(placesProvider.notifier).addPlace(value!);
                  Navigator.of(context).pop();
                },
              ),
              const SizedBox(
                height: 16,
              ),
              ImageInput(),
              const SizedBox(height: 16),
              ElevatedButton.icon(
                onPressed: () {
                  ref.watch(placesProvider.notifier).submitForm(formKey);
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
