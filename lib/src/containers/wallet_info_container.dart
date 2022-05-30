import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class WalletInfoContainer extends StatelessWidget {
  const WalletInfoContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<WalletInfo?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, WalletInfo?>(
      converter: (Store<AppState> store) => store.state.uiState.walletInfo,
      builder: builder,
    );
  }
}
