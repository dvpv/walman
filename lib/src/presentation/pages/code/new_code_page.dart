import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:walman/src/actions/local/index.dart';
import 'package:walman/src/containers/create_code_state_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/code/scan_new_code_page.dart';
import 'package:walman/src/presentation/styles/button_styles.dart';
import 'package:walman/src/utils/code.dart';

class NewCodePage extends StatefulWidget {
  const NewCodePage({Key? key}) : super(key: key);

  static const String route = '/new-code';

  @override
  State<NewCodePage> createState() => _NewCodePageState();
}

class _NewCodePageState extends State<NewCodePage> {
  final TextEditingController _title = TextEditingController();
  final TextEditingController _note = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _onSubmit(BuildContext context) {
    if (!_formKey.currentState!.validate()) {
      return;
    } else {
      final Store<AppState> store = StoreProvider.of<AppState>(context);
      final Code code = store.state.createCodeState.code!;
      store.dispatch(
        CreateNewCode(
          code.copyWith(
            title: _title.text,
            note: _note.text,
          ),
          store.state.user!.masterKey!,
        ),
      );
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return CreateCodeStateContainer(
      builder: (BuildContext context, CreateCodeState state) {
        return Scaffold(
          appBar: AppBar(
            bottomOpacity: 0,
            elevation: 0,
            backgroundColor: Colors.transparent,
            leading: TextButton(
              style: appBarButtonStyle(),
              child: const Text(
                'Back',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                FocusManager.instance.primaryFocus?.unfocus();
                showDialog<void>(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: const Text('Exit without saving?'),
                    content: const Text('Your changes will not be saved.'),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('CANCEL'),
                        onPressed: () => Navigator.pop(context),
                      ),
                      TextButton(
                        child: const Text('SCAN AGAIN'),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.popAndPushNamed(context, ScanNewCodePage.route);
                        },
                      ),
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      )
                    ],
                  ),
                );
              },
            ),
            actions: <Widget>[
              TextButton(
                style: appBarButtonStyle(),
                child: const Text(
                  'Create',
                  style: TextStyle(
                    color: Colors.indigo,
                  ),
                ),
                onPressed: () => _onSubmit(context),
              ),
            ],
          ),
          body: Form(
            key: _formKey,
            child: Builder(
              builder: (BuildContext context) {
                return Center(
                  child: ListView(
                    padding: const EdgeInsets.all(24),
                    physics: const BouncingScrollPhysics(),
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: TextFormField(
                          controller: _title,
                          autofocus: true,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          maxLength: 20,
                          enableSuggestions: false,
                          decoration: const InputDecoration(
                            labelText: 'Title',
                          ),
                          validator: (String? value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a title';
                            }
                            return null;
                          },
                          onFieldSubmitted: (_) => _onSubmit(context),
                        ),
                      ),
                      const SizedBox(height: 40),
                      BarcodeWidget(
                        width: MediaQuery.of(context).size.width * 0.4,
                        height: MediaQuery.of(context).size.width * 0.4,
                        data: state.code!.data,
                        barcode: barcodeFromScannerBarcodeFormat(state.code!.format),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
