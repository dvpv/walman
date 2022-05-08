part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<String>{}) Set<String> pending,
    AppUser? user,
    @Default(AppPage.home) AppPage selectedPage,
    @Default(Bundle()) Bundle bundle,
    @Default(DetailsState()) DetailsState detailsState,
    @Default(CreateCodeState()) CreateCodeState createCodeState,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    @Default('') String selectedId,
    @Default(false) bool editing,
    Password? password,
  }) = DetailsState$;

  factory DetailsState.fromJson(Map<dynamic, dynamic> json) => _$DetailsStateFromJson(Map<String, dynamic>.from(json));
}

@freezed
class CreateCodeState with _$CreateCodeState {
  const factory CreateCodeState({
    Code? code,
  }) = CreateCodeState$;

  factory CreateCodeState.fromJson(Map<dynamic, dynamic> json) =>
      _$CreateCodeStateFromJson(Map<String, dynamic>.from(json));
}
