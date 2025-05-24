import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:svemble_new/auth/repos/auth_repo.dart';
import 'package:svemble_new/cart/repo/cart_repo.dart';
import 'package:svemble_new/core/network/dio_settings.dart';
import 'package:svemble_new/product/repos/product_repo.dart';

final GetIt sl = GetIt.I;
Future<void> initDependencies() async {
  sl.registerLazySingleton<Dio>(
    DioSettings.getDioInstance,
  );
  sl.registerLazySingleton(
    () => AuthRepo(),
  );
  sl.registerLazySingleton(
    () => ProductRepo(
      dio: sl(),
    ),
  );
  sl.registerLazySingleton(
    () => CartRepo(),
  );
}
