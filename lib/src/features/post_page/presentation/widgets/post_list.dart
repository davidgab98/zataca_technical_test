import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/model/post.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/cubits/cubit/post_cubit.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/cubits/cubit/post_state.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/widgets/post_item.dart';

class PostList extends StatelessWidget {
  const PostList({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PostCubit, PostState>(
      builder: (context, state) {
        switch (state.status) {
          case PostStatus.initial:
          case PostStatus.loading:
            return const Center(
              child: CircularProgressIndicator(),
            );
          case PostStatus.loaded:
            if (state.posts.isEmpty) {
              return const Center(child: Text('No hay Posts'));
            } else {
              return ListBody(posts: state.posts);
            }
          case PostStatus.error:
            return const Center(
                child: Text('Ha habido un error cargando los Posts'));
          default:
            return const Center(child: Text('No hay Posts'));
        }
      },
    );
  }
}

class ListBody extends StatelessWidget {
  final List<Post> posts;
  const ListBody({super.key, required this.posts});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView.builder(
          shrinkWrap: true,
          primary: false,
          itemCount: posts.length,
          itemBuilder: (context, index) {
            return PostItem(post: posts[index]);
          },
        ),
      ],
    );
  }
}
