# Chat App
26-5-2024

### 1- Firebase
* currently we need to create a database which contains users and messages
* we need also to have to store some images
* to acheive that we will create *chat collection* and *users collection*.
* the images will be stored in  Firestorage.

### 2- User Authentication
* using `FirebaseAuth` to register new users
```
final _firebase = FirebaseAuth.instance;
final userCredits = await _firebase.createUserWithEmailAndPassword(
    email: _enteredEmail,
    password: _enteredPassword,
);
print(userCredits);
```
* login users
```
final userCredentials = await _firebase.signInWithEmailAndPassword(
    email: _enteredEmail,
    password: _enteredPassword,
);
print(userCredentials);
```

### 3- Storing Users Images
* using `FirebaseStorage`
```
final storageRef = FirebaseStorage.instance
    .ref()
    .child('user_images')
    .child('${userCredentials.user!.uid}.jpg');

await storageRef.putFile(_selectedImage!);

final imageUrl = await storageRef.getDownloadURL();
```
* storing an image in a folder called *user_images* with user id as it's name.
* uploading the file.  
* getting the image URL in the storage.

### 4- Storing Users Data
* using `FirebaseFirestore`
```
await FirebaseFirestore.instance
    .collection('users')
    .doc(userCredentials.user!.uid)
    .set({
    'username': _enteredUsername,
    'email': _enteredEmail,
    'image_url': imageUrl,
});
```
* storing user data in a collection named *users*.
* the document which contains user data will be named using user id.
* setting the common fields which contains the data of the user.

### 5- Storing User Messages
* using `FirebaseFirestore` and `FirebaseAuth` to get the data of the logged in user.
```
final user = FirebaseAuth.instance.currentUser!;

final userData = await FirebaseFirestore.instance
    .collection('users')
    .doc(user.uid)
    .get();

FirebaseFirestore.instance.collection('chat').add({
    'text': enteredMessage,
    'createdAt': Timestamp.now(),
    'userId': user.uid,
    'username': userData.data()!['username'],
    'userImage': userData.data()!['image_url'],
});
```

### 6- Push Notifications
* using `FirebaseMessaging` 
```
final fbm = FirebaseMessaging.instance;

await fbm.requestPermission();

final token = await fbm.getToken();

print('token: $token');
```
