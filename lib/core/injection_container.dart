import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:svemble_new/auth/repos/auth_repo.dart';

final GetIt sl = GetIt.I;
Future<void> initDependencies() async {
  sl.registerLazySingleton(
    () => Dio(),
  );
  sl.registerLazySingleton(
    () => AuthRepo(),
  );
}
