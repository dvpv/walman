import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:walman/src/utils/password_generator.dart';

part 'index.freezed.dart';

part 'index.g.dart';

part 'address.dart';

part 'app_state.dart';

part 'bundle.dart';

part 'password.dart';

part 'code.dart';

part 'bundle_item.dart';

part 'firebase_user.dart';

enum AppPage {
  home,
  passwords,
  places,
  codes,
}
