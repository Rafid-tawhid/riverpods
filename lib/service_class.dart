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

  Future<Profile> fetchUserProfile(String userId) async {
    await Future.delayed(const Duration(seconds: 1)); // Simulate network delay

    // Simulated API response
    final mockJson = {
      'id': userId,
      'name': 'Jane Doe',
      'email': 'jane@example.com',
      'avatarUrl': 'https://i.pravatar.cc/300',
      'followers': 243,
      'following': 156,
    };

    return Profile.fromJson(mockJson);
  }
}