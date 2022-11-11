import 'package:zataca_technical_test/src/features/post_page/domain/model/post.dart';

abstract class PostRepository {
  Future<List<Post>> fetchPosts();
}
