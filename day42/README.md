# Connect to Backend & HTTP Requests
25-3-2024

### 1- Managing Loading State
* when sending an HTTP Request it takes some time to receive the response, at this time you need to show the user some indicator that there is something happening in the backround and he should wait.
* `CircularProgressIndicator` widget shows a buffering circle to the user, you can use it conditionally with some boolean variable to display your content when waiting for the response.

### 2- Error Response Handling
* the returned response of the http methods have `statusCode` property which is a code that represents the state of the response.
* when the code is more than 400 this indiates an error and each error have a number to represent it, you can use conditions to display a specific error message for each error or use a general message to inform the user of the problem.

### 3- DELETE request
* http package have `delete()` method which accepts the `Uri` to delete items from the database.
* but this `Uri` is a bit different as it needs the *id* of the item which will be deleted from the databse in the *path* like so `'shopping-list-app/$id.json'`.  

### Extras
* trying-out repository pattern.
* creating a folder called *network* which represent the **network** layer we ceate moduls for each source to make all the http requests there.<br>
&nbsp; -> I worked with static methods in this module using `static` keyword before the method to execute it without the need to instantiate it's class.
* creating a folder called *repo* which represent the **repository** layer where our data are feteched from it's source in the desired form.
* creating a foler called *provider* which represent **business logic** layer, using **Riverpod** in this layer to create our providers, this is where the modules in the **repository** layer were called.
