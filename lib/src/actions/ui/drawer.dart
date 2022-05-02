part of 'index.dart';

@freezed
class ToggleAccountManagementList with _$ToggleAccountManagementList implements AppAction {
  const factory ToggleAccountManagementList() = ToggleAccountManagementList$;
}

@freezed
class ChangeDrawerPage with _$ChangeDrawerPage implements AppAction {
  const factory ChangeDrawerPage(DrawerPage newPage) = ChangeDrawerPage$;
}
