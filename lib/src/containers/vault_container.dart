import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class VaultContainer extends StatelessWidget {
  const VaultContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<List<VaultBundle>> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<VaultBundle>>(
      converter: (Store<AppState> store) => store.state.vault,
      builder: builder,
    );
  }
}
