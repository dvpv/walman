import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class PasswordGeneratorContainer extends StatelessWidget {
  const PasswordGeneratorContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<PasswordGeneratorState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, PasswordGeneratorState>(
      converter: (Store<AppState> store) => store.state.passwordGeneratorState,
      builder: builder,
    );
  }
}
