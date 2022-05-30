import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class PersistentStateContainer extends StatelessWidget {
  const PersistentStateContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<PersistentState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PersistentState>(
      converter: (Store<AppState> store) => store.state.persistentState,
      builder: builder,
    );
  }
}
