# Advanced Fundamentals Cont.
17-2-2024

### 1- Alignment
* we can use `crossAxisAlignment: CrossAxisAlignment.stretch` of the `Column` widget to make the column take all the horizontal space available on the screen.
* and in `Text` widget we can use `textAlign: TextAlign.center` to make the text at the center of the available space.

### 2- shuffle list values & Memory
* we can use a method called `shuffle()` on a list object.
* unlike `map()` which creates a new list in the memory, `shuffle()` modifies the values of the list memory in the memory.
* meaning of the list: *[1, 2, 3]* each value of these three have a place in memory storing this value, `shuffle()` will modify the values in the memory.
* so, if the first value *1* is stored in address *0xAB5* (memory addresses are **hexadecimal**) and the second value *2* is stored in address *0xAB6*, shuffle will swap the two values as an example, so the the address *0xAB5* which refers to the first item in the list will have the value *2* instead of *1* and the address *0xAB6* which referes to the second item in the list will have the value *1*.
* so shuffle will swap values in the list randomly.
* if we need to keep the original list, we can shuffle a doplicated list ex.
```
final originalList = [1, 2, 3];
final shuffledList = List.of(originalList)
shuffledList.shuffle();
```
* in the above code we used `List.of()` constructor to create a new list identical to the original one, then called `shuffle()` method on it *(Note: `shuffle()` returns *void* so we don't value a return value to store it in a variable directly like we did with `map()`)*


### 3- Adding Third Party Packages
* to include a package in your project, you need to search for the package name on **dart.dev**.
* after finding the package got to **Installing** section and follow the steps there.
* you can find the versions of the package on **Changelog** section (you should use the latest version unless there is a special need for a specific version in your project)
