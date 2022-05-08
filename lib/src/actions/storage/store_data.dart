part of 'index.dart';

const String _kStoreDataPendingId = 'StoreData';

@freezed
class StoreData with _$StoreData implements AppAction {
  @Implements<ActionStart>()
  const factory StoreData.start({
    required String masterKey,
    @Default(_kStoreDataPendingId) String pendingId,
  }) = StoreDataStart;

  @Implements<ActionDone>()
  const factory StoreData.successful([
    @Default(_kStoreDataPendingId) String pendingId,
  ]) = StoreDataSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory StoreData.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kStoreDataPendingId) String pendingId,
  ]) = StoreDataError;

  static String get pendingKey => _kStoreDataPendingId;
}
