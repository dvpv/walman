import 'package:flutter/cupertino.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/models/index.dart';

class DetailsContainer extends StatelessWidget {
  const DetailsContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<DetailsState> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, DetailsState>(
      converter: (Store<AppState> store) => store.state.detailsState,
      builder: builder,
    );
  }
}
