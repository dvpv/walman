import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class MasterKeyContainer extends StatelessWidget {
  const MasterKeyContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<String?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String?>(
      converter: (Store<AppState> store) => store.state.masterKey,
      builder: builder,
    );
  }
}
