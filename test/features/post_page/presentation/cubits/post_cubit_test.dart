import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/model/post.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/repositories/post_repository.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/cubits/cubit/post_cubit.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/cubits/cubit/post_state.dart';
import 'post_cubit_test.mocks.dart';

@GenerateMocks([
  PostRepository,
])
void main() {
  group('PostCubit', () {
    late PostRepository postRepository;

    setUpAll(() {
      postRepository = MockPostRepository();
    });

    blocTest<PostCubit, PostState>(
      'when PostCubit is created, state is emitted with PostStatus.initial ',
      build: () => PostCubit(postRepository: postRepository),
      verify: (cubit) {
        expect(cubit.state.status, PostStatus.initial);
      },
    );

    final List<Post> mockedResponse = [
      const Post(userId: 1, id: 1, title: "title1", body: "body1"),
      const Post(userId: 2, id: 2, title: "title2", body: "body2"),
      const Post(userId: 3, id: 3, title: "title3", body: "body3"),
    ];
    blocTest<PostCubit, PostState>(
      'when fetchPosts is called and returns a list'
      'state is emitted with PostStatus.loading and then PostStatus.loaded with the returned list',
      setUp: () {
        when(
          postRepository.fetchPosts(),
        ).thenAnswer((_) async => mockedResponse);
      },
      build: () => PostCubit(postRepository: postRepository),
      act: (cubit) {
        cubit.getPosts();
      },
      verify: (cubit) {
        expect(cubit.state.status, PostStatus.loaded);
      },
      expect: () => [
        isA<PostState>().having(
          (state) => state,
          'PostStatus loading is emitted',
          equals(
            const PostState(status: PostStatus.loading),
          ),
        ),
        isA<PostState>().having(
          (state) => state,
          'PostStatus loaded is emitted with the returned list',
          equals(
            PostState(
              status: PostStatus.loaded,
              posts: mockedResponse,
            ),
          ),
        ),
      ],
    );

    blocTest<PostCubit, PostState>(
      'when fetchPosts is called and throw an Exception'
      'state is emitted with PostStatus.loading and then PostStatus.error',
      setUp: () {
        when(
          postRepository.fetchPosts(),
        ).thenThrow(Exception());
      },
      build: () => PostCubit(postRepository: postRepository),
      act: (cubit) {
        cubit.getPosts();
      },
      verify: (cubit) {
        expect(cubit.state.status, PostStatus.error);
      },
      expect: () => [
        isA<PostState>().having(
          (state) => state,
          'PostStatus loading is emitted',
          equals(
            const PostState(status: PostStatus.loading),
          ),
        ),
        isA<PostState>().having(
          (state) => state,
          'PostStatus error is emitted',
          equals(
            const PostState(status: PostStatus.error),
          ),
        ),
      ],
    );
  });
}
