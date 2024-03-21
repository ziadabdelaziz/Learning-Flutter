# Handling User Inputs & Forms
21-3-2024

### 1- TextFormField
* the most import features of form specific widgets like `TextFormField` the `validation` and `onSaved` parameters which takes a function with the interered value as an argument.
* these functions are triggered using specific methods from form key. 

### 2- Form Access with GlobalKey
* to get access to the form you need a key.
* `GlobalKey` gives access the underlying widget which is connected to it and make sure that when the `build()` method is called, the form isn't rebuilt and keeps it's internal state, internal state is very important as it's the one that tells Flutter what to show in the screen after validation.
* to validate all the form fields we pass a global key to the parameter `key` in the `Form` widget, the `currentState` property in the global key have methods like `validate()` and `save()`, these methods triggers all the `validation` and `onSaved` methods in the form fields at once.
