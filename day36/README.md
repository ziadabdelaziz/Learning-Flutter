# Animations
18-3-2024

### 1- Explicit vs Implicit Animations
* **Explicit:** control the entire animation, more control but also more complex, can be avoided by using pre-built widgets.
* **Implicit:** Flutter controls the animation, less control and therefore less complexity, use pre-built animation widgets as often as possible.

### 2- Explicit Animation
* to apply some animation to a widget it needs to be a stateful widget.
* animation must be added in the `State` object to update the state and re-execute the build method. 
* `AnimationController` is a controller required to make our animation, but it can't be created where the property is initialized. 
*  this problem can be solved using `late` keyword before the controller identifier, it indicates that this property will be initialized later and for that we use `initState()` method to initialize it there as it's executed after the class is created.
* since we are using contoller we need to call `dispose()` method on it in the `dispose()` method inside our stateful widget to free our memory.
```
class _CategoriesScreenState extends State<CategoriesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  
  @override
  void initState() {
    super.initState();

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
      lowerBound: 0,
      upperBound: 1,
    );

    _animationController.forward();
  }
}
```
* `with` keyword is used to merege another class behind the scenes and get some features from this class and this class is called **mixin**, these classes are created by typing `mixin` before the class name to use the features inside this class in other classes that needs these features.
* `vsync` is a required parameter, it's responsbility is to make sure this animation executes for every frame, it takes `TickerProvider` which is received from `SingleTickerProviderStateMixin`, so the value of `vsync` is will be `this` keyword to get the frame rate information needed.
* `duration` parameter controlls the duration of the animation.
* `lowerBound` and `upperBound` these parameters controls between which values Flutter will animate.
* when working with animation your job it to use these changing values into somthing that changes something on the screen.
* `_animationController.forward()` method starts the animation.
```
@override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animationController,
      builder: (context, child) => Padding(
        padding: EdgeInsets.only(top: 100 - _animationController.value * 100),
        child: child,
      ),
      child: Container(
        ...
      ),
    )
  }
```
* `animation` parameter takes the controller.
* `builder` parameters takes an anonymous function that takes context as an argument and returns the widget that will be animated.
* this builder function can have an additional parameter which is a widget given to `child` parameter of `AnimatedBuilder`, this child won't be animated themselves so we optimize our code by not calling the build method for this widget.
* notice the padding value, it will start with *100 - 0 * 100* till it reaches *100 - 1 * 100* after 300 milliseconds.

### 3- SlideTransition
* there are different types or transitions in Flutter like scale and fade but we will talk about `SlideTransition` only for now.
* we can replace padding widget in the previous example with `SlideTransition` to have more optimized slide animation.
```
builder: (context, child) => SlideTransition(
    position: _animationController.drive(
        Tween(
            begin: const Offset(0, .25),
            end: const Offset(0, 0),
        ),
    ),
    child: child,
),
```
* `position` paremters takes argument of type `Animaiton<Offset>` which is an offset of the transition.
* `drive()` method let us convert our values from 0 to 1 to `Offset`.
* we need `Tween` widget which specify the beginning and the end of the transition by taking two `Offset` values. 
* we can use the capabilities of `SlideTransition` more in the following example.
```
builder: (context, child) => SlideTransition(
    position: Tween(
        begin: const Offset(0, .25),
        end: const Offset(0, 0),
    ).animate(
        CurvedAnimation(
            parent: _animationController,
            curve: Curves.decelerate,
        ),
    ),
    child: child,
)
```
* `Tween` object have `animate()` method which takes `Animation` widget.
* with that we can use more elegant animations like `CurvedAnimation`.
* `curve` parameter takes a curve which our animation will behave like.
* `Curves` class have multiple properties which represent the curves to follow like easeInOut, easeInCirc, Linear, etc.. .
