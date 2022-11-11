import 'package:dio/dio.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/model/post.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/repositories/post_repository.dart';

class ApiPostRepository extends PostRepository {
  ApiPostRepository();

  @override
  Future<List<Post>> fetchPosts() async {
    try {
      final response = await Dio().get(
        'https://jsonplaceholder.typicode.com/posts?_start=0&_limit=20',
      );

      List<Post> result = [];
      for (var element in response.data) {
        result.add(Post.fromJson(element));
      }

      return result;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}
