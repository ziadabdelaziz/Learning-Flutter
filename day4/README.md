# Foundation Cont.
2-2-2024

### 1- Display Images
* to use images in your project you need to add them to the app.
* create a folder called `assets` in the same level of `lib` folder and create a folder inside called `images`.
* insert the images in `images` folder.
* then add the path of these images as a dependency in your project by specifying the path of these images in your `pubspec.yaml` file by uncommenting `assets:` line and type the path of the images indented under `assets` as so
```
assets:
	- assets/images/
```
* now we added all images in `images` folder to your project and can displau them on the app.
* using 'Image` widget and since we added the images to our project we can use `Image.assets('assets/images/dice.png')` to display the image **dice.png** for example.
* there is a `width` argument can be passed to `assets` constructor to adjust the width od the image.

### 2- Using Multiple Constructors
* lets look at the following example
```
class GradiantContainer extends StatelessWidget {
	const GradiantContainer({this.color1, this.color2, super.key})
	const GradiantContainer.purple({super.key}): color1 = Colors.deepPurple, color2.indigo;

final Color color1;
final Color color2;

...

```
* you can see the the added `GrwdiantContainer.purple({super.key})` line, this is a second constructor you can use it by calling `GradiantContainer.purple()` instead of the default constructor we used earlier.
* this is the concept we used when calling `Image.assets('path')`.

### 3- Adding Button
* we want to add a clickable button under the displayed image, to acheive this we need to introduce `Column` widget.
* this widget helps us to display widgets in a column on the screen, this widget have an argument called `children` which accepts a list of wdgets, theae widgets are displayed in-order from top to bottom.
*ex.
```
Column(
	children: [
		Text('first text at the top'),
		Text('second text'),
		Text('third text at the bottom',
	])
```
* and to add a button you need to know about the tree types of buttons in flutter which are<br>
&nbsp; -> `Elevated Button` which have a slight shadow and a background<br>
&nbsp; -> `OutlinedButton` which have borders and without background.<br>
&nbsp; -> `TextButton` which is just a clickable text.
* e	ach of these widgets have an argument called `onPressed` which executes the function passed to it when the button is pressed.
* ex. `onPressed: (){}` this is called **anonymous function** which it doesn't have a name, just executes the code inside and not called anywhere else.
* there is another way
```
void changeIndex(){
	//executable code
}

...

TextButton(
	onPressed: changeIndex
	...
)
```
* in the above example we defines a function and pass it's name to `onPressed` so that the function is called every time the button is pressed.

### 4- Styling Column and Button
* `Column' widget takes all the vertical space of screen, we can change that by with `mainAxisSize` argument
* ex.
```
Column(
	mainAxisSize: MainAxisSize.min
	children: [
		Text('first text at the top'),
		Text('second text'),
		Text('third text at the bottom',
	])
```
* the above code gives the minimum size needed the display the widgets inside to the column height.
* for styling button look at the dollowing code
```
TextButton(
	style: TextButton.styleFrom(
		foregroundColor: Color.white,
		textStyle: const TextStyle(fontSize: 28)
		)
	)
```
* `styleFrom` is a function that returns a `ButtonStyle` object which takes varius arguments to change the default styling of the button.
* `foregroundColor` changes the color of the text which is the foreground of the button.
* you can use `padding` argument to have spacing between the widget content and it's boundaries, this argument accepts `EdgeInsetsGeometry` object which can be created with `EdgeInsets` constructor functions.
* ex. `padding: EdgeInsets.only(top:10)` this code create a spacing in the button top padding only.
* also you can use `SizedBox` widget between widgets in a column to cre	ate spacing between them.<br>
&nbsp; -> `SizedBox` size is specied explicitly and it doesn't change to fit it's content.