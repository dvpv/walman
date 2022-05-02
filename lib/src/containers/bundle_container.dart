import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class BundleContainer extends StatelessWidget {
  const BundleContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<Bundle> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, Bundle>(
      converter: (Store<AppState> store) => store.state.bundle,
      builder: builder,
    );
  }
}
