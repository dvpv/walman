import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class UIContainer extends StatelessWidget {
  const UIContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<UIState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, UIState>(
      converter: (Store<AppState> store) => store.state.uiState,
      builder: builder,
    );
  }
}
