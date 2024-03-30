import 'package:favorite_places/provider/places_provider.dart';
import 'package:favorite_places/ui/place_details_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesList extends ConsumerWidget {
  const PlacesList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final places = ref.watch(placesProvider);

    if (places.isEmpty) {
      return Center(
        child: Text('No places yet',
            style: Theme.of(context).textTheme.titleLarge),
      );
    }

    return ListView.builder(
      itemCount: places.length,
      itemBuilder: (ctx, index) {
        final place = places[index];

        return ListTile(
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          leading: CircleAvatar(
            radius: 26,
            backgroundImage: FileImage(place.imageFile),
          ),
          title: Text(
            place.name,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          trailing: const Icon(Icons.delete),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => PlaceScreen(place: place),
              ),
            );
          },
        );
      },
    );
  }
}
