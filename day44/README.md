# Using Native Device Features
27-3-2024

### 1- Review on Riverpod
* `StateNotifier<>` is a generic class that takes the type of `state` property which holds the data we want to keep track of it's change and in there we should define the methods that change the state.
* to use `StateNotifer` class we need `StateNotifierProvider<,>` which is a generic class that takes the class which extends `StateNotifier` and the type of the data we are tracking.  
