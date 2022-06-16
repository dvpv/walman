part of 'index.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(<String>{}) Set<String> pending,
    String? masterKey,
    FirebaseUser? firebaseUser,
    @Default(<VaultBundle>[]) List<VaultBundle> vault,
    @Default(0) int selectedPage,
    @Default(PersistentState()) PersistentState persistentState,
    // UI states
    @Default(DetailsState()) DetailsState detailsState,
    @Default(CreateCodeState()) CreateCodeState createCodeState,
    @Default(UIState()) UIState uiState,
    @Default(PasswordGeneratorState()) PasswordGeneratorState passwordGeneratorState,
  }) = AppState$;

  factory AppState.fromJson(Map<dynamic, dynamic> json) => _$AppStateFromJson(Map<String, dynamic>.from(json));
}

@freezed
class PersistentState with _$PersistentState {
  const factory PersistentState({
    @Default(Bundle()) Bundle bundle, // Current bundle
    String? walletPrivateKey, // Current crypto-wallet private key
    String? masterKeyHash,
  }) = PersistentState$;

  factory PersistentState.fromJson(Map<dynamic, dynamic> json) =>
      _$PersistentStateFromJson(Map<String, dynamic>.from(json));
}

// UI states

@freezed
class DetailsState with _$DetailsState {
  const factory DetailsState({
    @Default('') String selectedId,
    @Default(false) bool editing,
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

@freezed
class UIState with _$UIState {
  const factory UIState({
    WalletInfo? walletInfo,
    @Default(false) bool showPassword,
  }) = UIState$;

  factory UIState.fromJson(Map<dynamic, dynamic> json) => _$UIStateFromJson(Map<String, dynamic>.from(json));
}

@freezed
class PasswordGeneratorState with _$PasswordGeneratorState {
  const factory PasswordGeneratorState({
    @Default(kCharacterPoolValues) Set<CharacterPool> characterPool,
    @Default(16) int length,
    @Default('') String password,
  }) = PasswordGeneratorState$;

  factory PasswordGeneratorState.fromJson(Map<dynamic, dynamic> json) =>
      _$PasswordGeneratorStateFromJson(Map<String, dynamic>.from(json));
}

@freezed
class WalletInfo with _$WalletInfo {
  const factory WalletInfo({
    required String balance,
    required String address,
  }) = WalletInfo$;

  factory WalletInfo.fromJson(Map<dynamic, dynamic> json) => _$WalletInfoFromJson(Map<String, dynamic>.from(json));
}
