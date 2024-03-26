# Connect to Backend & HTTP Requests
26-3-2024

### 1- Better Error Handling
* when making an http request there are alot of things that can go wrong can't be detected with response status code like losing internet connect in your mobile phone.
* when something like that happens Flutter throws an error object with mechanisem built into dart.
* `throw Exception('An error occured!')` this is how you can throw and error manually, but you need to be careful when using that because it will crash your app.
* if you have a piece of code like http request that might cause problems in your app and want to handle the error proberly without crashing your app, using `try{}catch(error){}` statement will solve your problem.
* putting the piece of code that might throw an error in `try` block and thrown error will be give to `catch` block as an argument of type `Exception`, the code inside `catch` block will be executed when the error occures instead of crashing the app.

### 2- FutureBuilder Widget
* Flutter provided us with a widget that can handle the situations like the above more proberly.
* `FutureBuilder` widget which takes two parameters<br>
&nbsp; -> `future` which takes the `Future` object<br>
&nbsp; -> `builder` which takes a function with two arguments, first of type `BuildContext` and second of type `AsyncSnapshot<>`.
* `AsyncSnapshot<>` is a generic class that holds the future data and also have usefule properties like<br>
&nbsp; -> `connectionState` which is a `ConnectionState` enum that reprsent the state of the `Future` object<br>
&nbsp; -> `hasError` which is a boolean that returns `true` if an error occured and the `Future` object isn't received successfuly<br>
&nbsp; -> `error` parameter which holds the thrown `Exception`<br>
&nbsp; -> `data` which holds the data of the `Future` object.
* with that we can handle errors more properly and display our content conditionally based on the state of the asyncronous process in a concise way. 
