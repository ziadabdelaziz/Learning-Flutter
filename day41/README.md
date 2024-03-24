# Connect to Backend & HTTP Requests
24-3-2024

### 1- GET request
* to get data from the backend you should send a get request.
```
final url = Uri.https('URL', 'path');

final response = await http.get(url);
final Map<String, dynamic> listData = json.decode(response.body);
```
* it's similar to `http.post()` but you can't send body since this request is used to request data from the backend only.
* `convert` package provided by dart help us convert our response from **json** to a map.

### Extras
* using `Navigator.of(context)` inside `async` method gives warning as Flutter doesn't know if this widget is still visible when the `await` is done, for that we can check `context.mounted` 
