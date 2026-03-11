import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:worth_to_note/feature_todos/data/datasources/local_isar_datasource.dart';
import 'package:worth_to_note/feature_todos/data/models/todo_isar_model.dart';
import 'package:worth_to_note/feature_todos/data/repositories/local_repoitory_impl.dart';
import 'package:worth_to_note/feature_todos/domain/entities/todo_entity.dart';
import 'package:worth_to_note/feature_todos/domain/failures/add_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/delete_todo_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/todo_listen_failure.dart';
import 'package:worth_to_note/feature_todos/domain/failures/update_todo_failure.dart';

class _MockLocalIsarDatasource extends Mock implements LocalIsarDatasource {}

class _TodoIsarModelFake extends Fake implements TodoIsarModel {
  @override
  final int? id = 0;
  @override
  final String? title = '';
  @override
  final String? description = '';
  @override
  final bool? isDone = false;
  @override
  final DateTime? createdAt = null;
}

void main() {
  group('TodoLocalRepositoryImpl', () {
    late _MockLocalIsarDatasource datasource;
    late TodoLocalRepositoryImpl repository;

    // Two representations of the same todo — one the domain knows about,
    // one the database knows about.
    final aTodoEntity = TodoEntity(
      id: 1,
      title: 'Buy milk',
      description: 'Whole milk please',
      isDone: false,
      createdAt: DateTime(2023, 1, 1),
    );

    final aTodoModel = TodoIsarModel(
      id: 1,
      title: 'Buy milk',
      description: 'Whole milk please',
      isDone: false,
      createdAt: DateTime(2023, 1, 1),
    );

    setUpAll(() {
      registerFallbackValue(_TodoIsarModelFake());
    });

    setUp(() {
      datasource = _MockLocalIsarDatasource();
      repository = TodoLocalRepositoryImpl(datasource: datasource);
    });

    group('listenTodos', () {
      test('converts database models into domain entities for each emission',
          () async {
        when(() => datasource.listenTodos()).thenAnswer(
          (_) => Stream.fromIterable([
            [aTodoModel]
          ]),
        );

        final result = await repository.listenTodos().first;

        result.fold(
          (_) => fail('Expected a list of todos, not a failure'),
          (todos) {
            expect(todos, hasLength(1));
            expect(todos.first, aTodoEntity);
          },
        );
      });

      test('wraps a datasource error into a domain failure instead of crashing',
          () async {
        when(() => datasource.listenTodos())
            .thenThrow(Exception('DB unavailable'));

        final result = await repository.listenTodos().first;

        expect(result.isLeft(), isTrue);
        result.fold(
          (failure) => expect(failure, isA<TodoListenFailure>()),
          (_) => fail('Expected a failure'),
        );
      });
    });

    group('addTodo', () {
      test('succeeds when the datasource saves without error', () async {
        when(() => datasource.addTodo(any())).thenAnswer((_) async {});

        final result = await repository.addTodo(aTodoEntity);

        expect(result.isRight(), isTrue);
      });

      test('wraps a datasource error into an AddTodoFailure', () async {
        when(() => datasource.addTodo(any()))
            .thenThrow(Exception('write error'));

        final result = await repository.addTodo(aTodoEntity);

        result.fold(
          (failure) => expect(failure, isA<AddTodoFailure>()),
          (_) => fail('Expected a failure'),
        );
      });
    });

    group('updateTodo', () {
      test('succeeds when the datasource saves without error', () async {
        when(() => datasource.updateTodo(any())).thenAnswer((_) async {});

        final result = await repository.updateTodo(aTodoEntity);

        expect(result.isRight(), isTrue);
      });

      test('wraps a datasource error into an UpdateTodoFailure', () async {
        when(() => datasource.updateTodo(any()))
            .thenThrow(Exception('write error'));

        final result = await repository.updateTodo(aTodoEntity);

        result.fold(
          (failure) => expect(failure, isA<UpdateTodoFailure>()),
          (_) => fail('Expected a failure'),
        );
      });
    });

    group('deleteTodo', () {
      test('succeeds when the datasource deletes without error', () async {
        when(() => datasource.deleteTodo(1)).thenAnswer((_) async {});

        final result = await repository.deleteTodo(1);

        expect(result.isRight(), isTrue);
      });

      test('wraps a datasource error into a DeleteTodoFailure', () async {
        when(() => datasource.deleteTodo(1)).thenThrow(Exception('not found'));

        final result = await repository.deleteTodo(1);

        result.fold(
          (failure) => expect(failure, isA<DeleteTodoFailure>()),
          (_) => fail('Expected a failure'),
        );
      });
    });
  });
}
