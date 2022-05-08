import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class CreateCodeStateContainer extends StatelessWidget {
  const CreateCodeStateContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<CreateCodeState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, CreateCodeState>(
      converter: (Store<AppState> store) => store.state.createCodeState,
      builder: builder,
    );
  }
}
