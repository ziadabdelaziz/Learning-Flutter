# Foundations
30-1-2024

### 1- Learning about project files and folders
* **lib folder**: The main folder where all you code resides.
* **platforms folders**: each platoform have a folder. contains it's configurations for building the app.
* **pubspec.yaml** file: contains all the dependencies that will will need for our flutter application.
* **README.md**: this is where you would document your project.

### 2- From dart to machine language
* the code is parsed by dart.
* then compiled into machine code that can run on various platforms.

### 3- How programming languages work
* **key words**: built-in the language that do specific job.
* **identifiers**: changeable names that identify the code.

### 4- Functions
* Instructions that can be exectued in your code.
* ex. **runApp()**: it's job is to run the flutter applicaiton.
* can't run code outside main function.
* need to wrap executable code with **void main(){}** function.

### 5- Importing Features from Packages
* having the dependencies in the pubspec.yaml is not enough. to use features from the included packages, you need to tell the computer explicitly where the code come from.
* **import** keyword that takes a path which allow us to use code specified by the path.

### 6- How Flutter app starts
* defiend function need to be called inorder to execute them.
* **main** functions is executed automatically at the start of the app.

### 7- Widgets
* user interface is built with widgets.
* combine and next widgets to create user interface.
* since you nest widgets you end up with **widget tree**.

### 8- Using Widgets
* you can find widgets in flutter widgets catalog.
* no need to learn all the widgets.
* learn the most important ones.
* **MaterialApp** widget: it's the core widget for your application, which is a class provided by flutter.
* you need to know the parameters of each widget.

### 9- Positional and Named Arguments
* **positional arguments**: the arguments(inputs to function/class) are passed in order.
<br> -> if you identify function with positional parameters you must provide them when calling the function.
<br> -> if you want the function to have optional parameters, put them in square brackets, ex: **void add(a, [b]){}** and you can give them default values like this **void add(a, [b = 5]){}**.
* **named arguments**: you identify the parameters by their names ex: **void add({required a, required b}){}**

### 10- Combining widgets
* ex: **runApp(MaterialApp(home: Text('Hello World!')))** this code display Hello World! on the screen.

### 11- Const values
* **const** is a key word that helps dart optimize runtime performance, this happens as it give the variables a fixed address in memory and prevent duplication.

### 12- Bigger widget tree
* **runApp(MaterialApp(home: Scaffold(body: Center(child: Text('Hello World),),),),)**.
* **Scaffold** provide us with a delicate interface.
* **Center** make it's child centered in the screen.

### 13- Value Types
* all values have certain types.
* values can be of multiple types.
* you specify the types of values you want to accept.

### 14- Configuring Widgets
* you can give a value for the **backgroundColor** argument in Scaffold, which need a value of type **Color** to configure the background color.  

### 15- Configuration Objects
* **Container** flutter widget that is useful in configuring objects.
<br> -> it doesn't support being a const, need it's upper widget to be const.
<br> -> you can use **decoration** which need **Decoration** type value *Note: Decoration is an abstract class can't be passed to the function* 
<br> -> **BoxDecoration** is of type Decoration and can be given an argument called **gradient** which need a value of type **Gradient**.
<br> -> **LinearGradient** is of type gradient and have **colors** agrument which accepts a value of type **List<Color>** ex: **colors: [Colors.red, Colors.blue]** *Note: this angle brackets are syntax create <u>*generic*</u> type which work with other types*  
