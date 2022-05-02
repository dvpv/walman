part of 'index.dart';

const String _kGetDataPendingId = 'GetData';

@freezed
class GetData with _$GetData implements AppAction {
  @Implements<ActionStart>()
  const factory GetData.start({
    @Default(_kGetDataPendingId) String pendingId,
  }) = GetDataStart;

  @Implements<ActionDone>()
  const factory GetData.successful(
    Bundle? bundle, [
    @Default(_kGetDataPendingId) String pendingId,
  ]) = GetDataSuccessful;

  @Implements<ActionDone>()
  @Implements<ErrorAction>()
  const factory GetData.error(
    Object error,
    StackTrace stackTrace, [
    @Default(_kGetDataPendingId) String pendingId,
  ]) = GetDataError;

  static String get pendingKey => _kGetDataPendingId;
}
