# Chat App
4-4-2024

### 1- Firebase CLI & SDK Cont.
* following the firebase documentation, run `dart pub global activate flutterfire_cli` to install **FlutterFire CLI**
* run `export PATH="$PATH":"$HOME/.pub-cache/bin"` to solve the error then run the line before again.
* run `flutterfire configure` -> choose the project you want -> choose the platforms you want to run your app on.
* add `firebase_auth` and `firebase_core` to your *pubspec.yaml` file.
* import these two packages in *main.dart* file in your project.
* make `main` function as `async` function then add the following lines before `runApp()` function.
```
WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
```
* the first line ensures that the layer beneath Flutter engine is initialized.
* the second initialize firebase for the platform which the app is running on.
