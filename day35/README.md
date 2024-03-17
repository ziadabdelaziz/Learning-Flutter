# Managing App-wide State
17-3-2024

### 1- StateNotifier
* when working with a data that changes using `Provider` won't be enought, instead we use `StateNotifierProvider`.
```
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteClothesNotifier extends StateNotifier<List<Meal>> {
  FavoriteClothesNotifier() : super([]);

  void toggleMealFavoriteStatus(String clothe) {
    final clotheIsFavorite = state.contains(clothe);

    if (clotheIsFavorite) {
      state = state.where((currentClothe) => currentClothe.id != clothe.id).toList();
    } else {
      state = [...state, clothe];
    }
  }
}

final favoriteClothesProvider =
    StateNotifierProvider<FavoriteClothesNotifier, List<Meal>>((ref) {
  return FavoriteClothesNotifier();
});
```
* `StateNotifierProvider` works with `StateNotifier` which holds the state or the data.
* `StateNotifierProvider` is a generic class that takes the class which extends `StateNotifier` and the type of the managed data/state.
* `StateNotifier` is also a generic class that needs the type of the managed state/data.
* the class which extends `StateNotifier` provide the initial state (initial value) to the super class and in this class we create the methods that change our state.
* using `state` property provided by the super class which holds our data.
* `state` property can't be modified, it must be re-assigned.
* `StateNotifierProvider` takes argument a method which returns the class that contains the data and the methods.
* using state notifier:
```
class MealDetailsScreen extends ConsumerWidget {
  const MealDetailsScreen({
    super.key,
    required this.meal,
  });

  final Meal meal;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref
              .read(favoriteClothesProvider.notifier)
              .toggleClotheFavoriteStatus(clothe);
        },
        child: const Icon(Icons.star),
      ),
      body: ...
    )
  }
}
```
* the consumer for stateless widget is `ConsumerWidget`, it's `build()` method takes two arguments, the context and `WidgetRef` which give us access to our provider.
* this is how to call a method from `StateNotifier`, by reading `notifier` property which holds our methods.


### 2- Dependent Provider
* when creating a provider that depends on another one, we got the `ref` argument which can be used to read, watch or listen to data and provider package make re-executes this funciton when the data changes behind the scenes. 

### Extras
* spread operator `...` can be used with maps also, it returns the keys and it's values.