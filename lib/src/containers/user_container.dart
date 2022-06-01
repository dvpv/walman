import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class FirebaseUserContainer extends StatelessWidget {
  const FirebaseUserContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<FirebaseUser?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, FirebaseUser?>(
      converter: (Store<AppState> store) => store.state.firebaseUser,
      builder: builder,
    );
  }
}
