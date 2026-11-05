import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  static const String baseUrl = "https://jsonplaceholder.typicode.com/posts";

  static Future<void> sendUserDataToBackend(String name, String email, String bloodType) async {
    try {
      await http.post(
        Uri.parse(baseUrl),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode({"name": name, "email": email, "bloodType": bloodType}),
      );
    } catch (e) {
      print("API Error: $e");
    }
  }
}