import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/service_class.dart';

import 'models.dart';

final apiServiceProvider = Provider((ref) => ApiService());

final postsProvider = FutureProvider<List<Post>>((ref) async {
  final apiService = ref.read(apiServiceProvider);
  return await apiService.fetchPosts();
});