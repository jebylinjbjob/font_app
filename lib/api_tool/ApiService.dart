import 'dart:convert';
import 'package:http/http.dart' as http;

// API 服務
class ApiService {
  static const String baseUrl = 'http://localhost:8080/api/v1/';

  static Future<Map<String, dynamic>> fetchData(String endpoint) async {
    String url = baseUrl + endpoint;
    final response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }
}
