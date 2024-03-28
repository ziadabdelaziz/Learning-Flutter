# Using Native Device Features
27-3-2024

### Pick an Image
* **image_picker** package help us to get images from the device or from the camera.
* this package works with android without extra configurations but ios needs some configurations which you can find in the documentation of the package at flutter.dev.
```
File? _selectedImage;

  void _takePicutre() async {
    final imagePicker = ImagePicker();
    final pickedImage =
        await imagePicker.pickImage(source: ImageSource.camera, maxWidth: 600);

    if (pickedImage == null) {
      return;
    }
    setState(() {
      _selectedImage = File(pickedImage.path);
    });
  }
```
* this is how we can take an image with device camera.
* we also need the `File` object in the **dart:io** package.
```
GestureDetector(
    onTap: _takePicutre,
    child: Image.file(
        _selectedImage!,
        fit: BoxFit.cover,
        width: double.infinity,
        height: double.infinity,
    ),
);
```
* this is how we can display our image.

### Extras
* configuring a border of a container is done through `decoration` parameter which takes `BoxDecoration` widget, it's `border` parameter takes `Border` widget in which you can specify each side of the boder or use `Border.all()` constructor to give them all the same styling.
