# Connect to Backend & HTTP Requests
23-3-2024

### 1- Backend
* so far the data we worked with are stored locally on the mobile device.
* you can't share this data on other devices and if the device is damaged the data will be lost.
* the **Backend Server** solves this problem by storing the data on the server and connecting to it through the internet to get access to the data.
* communication between local devices and the server happen through **HTTP requests**.

### 2- HTTP Requests
* **HTTP** is a protocol help us to connect and communicate with the backend.
* if you want something from the backend you would send an **HTTP request** which tells the backend what you want and after the server runs the program which fulfills your request it sends **HTTP response** containing the requested data.
* **HTTP request** typically contains:<br>
&nbsp; -> URL (address) of the backend to which the request should be sent.<br>
&nbsp; -> Method (type) of action to be performed.<br>
&nbsp; -> Headers (metadata)<br>
&nbsp; -> Body (data) attached to the request to the backend.
* **HTTP response** may includes:<br>
&nbsp; -> Headers (metadata)<br>
&nbsp; -> Body (data)

### 3- Firebase
* this is a service provided by google we can use to make a backend which we can connect to.
* we can create a backend easily and create a realtime database from where we can send and receive data.
* for working with HTTP in Flutter we need **http** package.

### 4- POST Request
* to send a POST request to the backend server we would need to use `http.post()` provided by *http* package.
* `http.post()` method takes the `Uri` object, headers and body.
* `Uri` takes url of the backend server, path inside the server (optional) and query (optional).
* this method returns `Future` object which takes some time until it returns its value, so we need to work with `async` and `await` or get the response with `.then(response)` method with is executed after the receiving the response.
