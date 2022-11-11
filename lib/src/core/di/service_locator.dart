import 'package:get_it/get_it.dart';
import 'package:zataca_technical_test/src/features/post_page/data/repositories/api_post_repository.dart';
import 'package:zataca_technical_test/src/features/post_page/domain/repositories/post_repository.dart';

final locator = GetIt.instance;

Future<void> serviceLocatorSetUp() async {
  locator.registerLazySingleton<PostRepository>(
    () => ApiPostRepository(),
  );
}
