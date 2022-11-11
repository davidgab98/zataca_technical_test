import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zataca_technical_test/src/common_widgets/section_frame.dart';
import 'package:zataca_technical_test/src/constants/styles/styles.dart';
import 'package:zataca_technical_test/src/core/di/service_locator.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/repositories/post_repository.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/cubits/cubit/post_cubit.dart';
import 'package:zataca_technical_test/src/features/post_page/presentation/widgets/post_list.dart';

class PostPage extends StatelessWidget {
  const PostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        elevation: 0,
        title: Text(
          'Prueba nivel flutter Zataca',
          style: AppTextStyle.h3.copyWith(
            color: AppColors.primary,
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_rounded,
            color: AppColors.primary,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(
            color: AppColors.backgroundContrast3,
            height: 0.1,
          ),
        ),
      ),
      body: const Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(AppSizes.p16),
        child: SectionFrame(
          title: "Listado de post",
          description:
              "Vamos a mostrar los primeros 20 resultados que nos devuelve la petición: https://jsonplaceholder.typicode.com/posts?_start=0&_limit=20",
          child: BlocProvider(
            create: (_) => PostCubit(
              postRepository: locator<PostRepository>(),
            )..getPosts(),
            child: Column(
              children: const [
                Divider(thickness: 1, height: 0),
                PostList(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
