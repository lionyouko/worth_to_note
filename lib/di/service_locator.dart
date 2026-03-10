import 'package:get_it/get_it.dart';
import 'package:worth_to_note/feature_todos/application/todo_usecases.dart';
import 'package:worth_to_note/feature_todos/data/datasources/local_isar_datasource.dart';
import 'package:worth_to_note/feature_todos/data/repositories/local_repoitory_impl.dart';
import 'package:worth_to_note/feature_todos/domain/repositories/todo_local_repository.dart';
import 'package:worth_to_note/feature_todos/presentation/cubits/todo_cubit.dart';
import 'package:worth_to_note/services/isar_service.dart';

final sl = GetIt.I;

Future<void> init() async {
  await _initDB();
  await _initTodoFeature();
}

Future<void> _initDB() async {
  sl.registerLazySingleton<IsarService>(() => IsarService());
}

Future<void> _initTodoFeature() async {
  sl.registerFactory<LocalIsarDatasource>(
      () => LocalIsarDatasourceImpl(isarService: sl()));
  sl.registerFactory<TodoLocalRepository>(
      () => TodoLocalRepositoryImpl(datasource: sl()));
  sl.registerFactory(() => TodoUsecases(sl()));
  sl.registerLazySingleton(() => TodoCubit(usecases: sl()));
}
