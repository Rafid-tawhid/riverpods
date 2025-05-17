import 'dart:convert';

import 'package:http/http.dart' as http;

import 'another/profile_model.dart';
import 'models.dart';

class ApiService {
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  Future<List<Post>> fetchPosts() async {
    final response = await http.get(Uri.parse('$baseUrl/posts'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body);
      return jsonData.map((json) => Post.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }

  Future<List<ProfileModel>> fetchProfile() async {
    final response = await http.get(Uri.parse('https://dummyjson.com/users'));

    if (response.statusCode == 200) {
      final List<dynamic> jsonData = json.decode(response.body)['users'];
      return jsonData.map((json) => ProfileModel.fromJson(json)).toList();

    } else {
      throw Exception('Failed to load posts');
    }
  }


}