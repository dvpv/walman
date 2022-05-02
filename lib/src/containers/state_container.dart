import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class StateContainer extends StatelessWidget {
  const StateContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<AppState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AppState>(
      converter: (Store<AppState> store) => store.state,
      builder: builder,
    );
  }
}
