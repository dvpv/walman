import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class TriggerUpdateContainer extends StatelessWidget {
  const TriggerUpdateContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<void> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, void>(
      converter: (Store<AppState> store) {},
      builder: builder,
    );
  }
}
