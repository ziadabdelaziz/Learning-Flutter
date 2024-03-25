import 'package:http/http.dart' as http;

class GroceriesSource {
  const GroceriesSource();

  static const _urlAddress =
      'shopping-list-app-da3db-default-rtdb.europe-west1.firebasedatabase.app';

  static Future<http.Response> requestGroceries() async {
    const path = 'shopping-list-app.json';
    final url = Uri.https(_urlAddress, path);

    final response = await http.get(url);
    print('from Network: ${response.body}');
    return response;
  }

  static Future<http.Response> deleteItem(String id) async {
    final path = 'shopping-list-app/$id.json';
    final url = Uri.https(_urlAddress, path);

    final response = http.delete(url);

    return response;
  }
}
