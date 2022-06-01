import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/ui_container.dart';
import 'package:walman/src/models/index.dart';

class ShowPasswordButton extends StatefulWidget {
  const ShowPasswordButton({Key? key}) : super(key: key);

  @override
  State<ShowPasswordButton> createState() => _ShowPasswordButtonState();
}

class _ShowPasswordButtonState extends State<ShowPasswordButton> {
  @override
  void initState() {
    super.initState();
    StoreProvider.of<AppState>(context, listen: false).dispatch(const ShowPassword(show: false));
  }

  @override
  Widget build(BuildContext context) {
    return UIContainer(
      builder: (BuildContext context, UIState uiState) {
        return IconButton(
          icon: Icon(
            uiState.showPassword ? Icons.remove_red_eye_outlined : Icons.remove_red_eye,
          ),
          onPressed: () => StoreProvider.of<AppState>(context).dispatch(
            ShowPassword(show: !uiState.showPassword),
          ),
        );
      },
    );
  }
}
