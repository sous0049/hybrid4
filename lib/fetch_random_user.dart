import 'dart:convert';
import 'package:http/http.dart';

class FetchRandomUser {
  Future<List<Map<String, dynamic>>> fetchRandomUsers(
      String fetchUrl, int numberOfUsers) async {
    try {
      final Uri uri = Uri.parse('$fetchUrl$numberOfUsers');
      final response = await get(uri);
      if (response.statusCode == 200) {
        final List<dynamic> data = json.decode(response.body);
        return List<Map<String, dynamic>>.from(data);
      } else {
        print('Failed to fetch data. Status code: ${response.statusCode}');
        return [];
      }
    } catch (e) {
      print('An error occurred: $e');
      return [];
    }
  }
}
