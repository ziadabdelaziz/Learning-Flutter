# Using Native Device Features
1-4-2024

### 1- Google's Geocoding
* to convert longitude and latitude values into a human readable address we need to use **geocoding** API from google maps platform.
* to acheive that we need to send a *get* request to the url you can find in the documentation with the *longitude*, *latitude* and you *API key* inside the url.
* the response body will be in the form of json object in which there is the `"formatted_data"` key which have the address we want.
