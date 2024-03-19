# Animations
19-3-2024

### 1- Implicit Animation
* there are many widgets provided by Flutter that help us do some animation to our widgets without configuring it explicitly where we just wrap our widget with and initialize some parameters.

### 2- AnimatedSwitcher
```
AnimatedSwitcher(
    duration: const Duration(milliseconds: 300),
    transitionBuilder: ((child, animation) {
        return RotationTransition(
            turns: Tween<double>(begin: 0.8, end: 1).animate(animation),
            child: child
        );
    }),
    child: Icon(
        isFavorite ? Icons.star : Icons.star_border,
        key: ValueKey(isFavorite),
    ),
),
```
* `AnimatedSwitcher` help us animated the transition from a widget to another.
* specifing the animation we want in `transitionBuilder` parameter.
* `AnimatedSwitcher` needs know that the `Icon` widget has changed and this can be done by giving it a `key` that let Flutter know that this widget has changed, because without that it's the same `Icon` widget in the widget tree.

### 3- Hero Widget
* `Hero` widget animates the transition of widget across screens.
* it requires a `tag` parameters which is a unique value to distinguish the widget, wrapping the widget with `Hero` widget in both screens with the same `tage` value will do the trick. 
