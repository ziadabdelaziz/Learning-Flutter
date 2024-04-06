# Chat App
6-4-2024

### 1- Firebase SignUp
* firebase package provide us with helpful methods to add users easily without handling http requests manually.
```
import 'package:firebase_auth/firebase_auth.dart';

final _firebase = FirebaseAuth.instance;

final userCredentials = await _firebase.createUserWithEmailAndPassword(
    email: _enteredEmail,
    password: _enteredPassword,
);
```
* this how we can add users to our firebase.
* `createUserWithEmailAndPassword()` methods return the credentials of user of throw `FirebaseAuthException` if something went wrong (should be handeled with `try{} catch (error){}` statement).

### 2- Firebase Login
* to allow users to login to the app we can use the following code.
```
final userCredentials = await _firebase.signInWithEmailAndPassword(
    email: _enteredEmail,
    password: _enteredPassword,
);
```
* it behaves silmilar to signup

### 3- How Authentication works
* the user sends his credentials to the backend and then backend stores & validates the data then send authentication token to the frontend which can be stored on the device and used whenever it's required to access information from the backend.
