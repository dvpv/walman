part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<String>{}) Set<String> pending,
    AppUser? user,
    @Default(1) int selectedPage,
    @Default(Bundle()) Bundle bundle,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}
