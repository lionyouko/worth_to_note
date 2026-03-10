import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:worth_to_note/feature_todos/data/models/todo_isar_model.dart';

class IsarService {
  Future<Isar> openDB() async {
    if (Isar.instanceNames.isEmpty) {
      final dir = await getApplicationDocumentsDirectory();

      if (Isar.getInstance() != null) {
        return Future.value(Isar.getInstance());
      }

      final isar = await Isar.open(
        [
          TodoIsarModelSchema,
        ],
        directory: dir.path,
      );
      return isar;
    } else {
      return Future.value(Isar.getInstance());
    }
  }
}
