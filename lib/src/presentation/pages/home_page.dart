import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/pending_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/password_list_tile.dart';
import 'package:walman/src/presentation/pages/code/code_details.dart';
import 'package:walman/src/utils/code.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PendingContainer(
      builder: (BuildContext context, Set<String> pending) {
        return pending.contains(GetData.pendingKey)
            ? const Center(child: CircularProgressIndicator())
            : BundleContainer(
                builder: (BuildContext context, Bundle bundle) {
                  final List<Password> passwords = bundle.passwords;
                  if (passwords.isNotEmpty) {
                    passwords.sort((Password a, Password b) => a.timesAccessed - b.timesAccessed);
                  }
                  final List<Code> codes = bundle.codes;
                  if (codes.isNotEmpty) {
                    codes.sort((Code a, Code b) => a.timesAccessed - b.timesAccessed);
                  }
                  return ListView(
                    physics: const BouncingScrollPhysics(),
                    children: <Widget>[
                      const Padding(
                        padding: EdgeInsets.all(24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Passwords',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          physics: const BouncingScrollPhysics(),
                          itemCount: passwords.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Password password = passwords[index];
                            return PasswordListTile(password: password);
                          },
                        ),
                      ),
                      const Spacer(),
                      const Padding(
                        padding: EdgeInsets.all(24),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Codes',
                            style: TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.3,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          physics: const BouncingScrollPhysics(),
                          itemCount: codes.length,
                          itemBuilder: (BuildContext context, int index) {
                            final Code code = codes[index];
                            return Padding(
                              padding: const EdgeInsets.all(8),
                              child: Card(
                                child: GestureDetector(
                                  onTap: () {
                                    StoreProvider.of<AppState>(context).dispatch(
                                      SelectItemDetails(
                                        code.id,
                                        (_) => Navigator.pushNamed(context, CodeDetails.route),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width: 200,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(16),
                                            child: BarcodeWidget(
                                              drawText: false,
                                              data: code.data,
                                              barcode: barcodeFromScannerBarcodeFormat(code.format),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(8),
                                          child: SizedBox(
                                            height: 50,
                                            child: Text(
                                              code.title,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 24,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 100,
                      )
                    ],
                  );
                },
              );
      },
    );
  }
}
