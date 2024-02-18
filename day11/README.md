# Advanced Fundamentals Cont.
18-2-2024

### 1- CrossAccessAlignment.stretch vs double.infinity
* when working with a `Column` widget if you assign the `crossAccessAlignment` parameter the value `CrossAccessAlignment.stretch`.
&nbsp; -> this requires the children to fill the cross axis.
* when making the `Column` as a child of `SizedBox` with `width: double.infity` 
&nbsp; -> you are giving all the available space for the `Column` widget itself and the inner children remain the same.
* so, when you need the column itself to get all the space and control the it's main axis, you would need to wrap it with another widget.
* and when you need it's children to get all the space in teh corss axis, you would need cross access alignment.

### 2- Map Data Structure
* unlike `map()` method we discussed earlier, `Map<K, V>` is a generic class that can store two value pairs of two different data types ex:`Map<String, num> nameAndAge = {'Ziad': 21, 'Ali':22};` we can access the value *21* by following notation `nameAndAge['Ziad']`.
* this gives us more flexibility and readability when working with alot of data, where we can access a value by specifying it's identifier as a readable name not just numbers like list indecies.
