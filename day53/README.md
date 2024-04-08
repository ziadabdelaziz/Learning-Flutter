# Chat App
7-4-2024

### 1- StreamBuilder
* 
* let's take this code as an example.
```
StreamBuilder(
    stream: FirebaseAuth.instance.authStateChanges(),
    builder: (ctx, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
            return const SplashScreen();
        }

        if (snapshot.hasData) {
            return const ChatScreen();
        }

        return const AuthScreen();
    },
),
```
* the `builder` function will be executed when them `stream` emits a new value.

### 2- SignOut
* to sign users out of the app `FirebaseAuth.instance.signOut()`.

### 3- Storing Images
* using the **firebase_storage** package and adding a storage from firebase console we can store images on the backend.
```
final storageRef = FirebaseStorage.instance
    .ref()
    .child('user_images')
    .child('${userCredentials.user!.uid}.jpg');

await storageRef.putFile(_selectedImage!);
final imageUrl = await storageRef.getDownloadURL();

print(imageUrl);
```
