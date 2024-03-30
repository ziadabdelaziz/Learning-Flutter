# Using Native Device Features
30-3-2024

### 1- Location
* using **location** package which help us to get the mobile location.
* using the code from the package readme
```
Location location = Location();

bool serviceEnabled;
PermissionStatus permissionGranted;
LocationData locationData;

serviceEnabled = await location.serviceEnabled();
if (!serviceEnabled) {
    serviceEnabled = await location.requestService();
    if (!serviceEnabled) {
        return;
    }
}

permissionGranted = await location.hasPermission();
if (permissionGranted == PermissionStatus.denied) {
    permissionGranted = await location.requestPermission();
    if (permissionGranted != PermissionStatus.granted) {
        return;
    }
}

locationData = await location.getLocation();
```
* you may encounter a problem with *build.gradle* when running the app, for that you need to get the latest version of kotline from https://kotlinlang.org/docs/releases.html#release-details and make sure it reflects inside *settings.gradle* file in `id "org.jetbrains.kotlin.android" version "1.9.23" apply false` line.
 

### Extras
* when working with provider and forms, I used the form validation and the managed state inside on provider and used properties to store values instead of passing it in functions, it wasn't manageable but it was enough for the moment, what can be done better?

