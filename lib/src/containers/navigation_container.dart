import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class NavigationContainer extends StatelessWidget {
  const NavigationContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<int> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, int>(
      converter: (Store<AppState> store) => store.state.selectedPage,
      builder: builder,
    );
  }
}
