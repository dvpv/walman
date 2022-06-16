import 'reducers/auth_reducer_test.dart' as auth_reducer_test;
import 'reducers/local_reducer_test.dart' as local_reducer_test;
import 'reducers/storage_reducer_test.dart' as storage_reducer_test;
import 'reducers/ui_reducer_test.dart' as ui_reducer_test;

Future<void> main() async {
  await auth_reducer_test.main();
  await local_reducer_test.main();
  await storage_reducer_test.main();
  await ui_reducer_test.main();
}
