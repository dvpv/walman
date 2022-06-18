import 'package:flutter/material.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/code/code_list_tile.dart';
import 'package:walman/src/presentation/pages/code/no_codes_message.dart';

class CodesPage extends StatelessWidget {
  const CodesPage({Key? key}) : super(key: key);

  static const String title = 'Codes';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BundleContainer(
        builder: (BuildContext context, Bundle bundle) {
          if (bundle.codes.isEmpty) {
            return const NoCodesMessage();
          }
          final List<Code> codes = bundle.codes.toList()..sort((Code a, Code b) => a.title.compareTo(b.title));
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: codes.length + 1,
            itemBuilder: (BuildContext context, int index) {
              if (index == codes.length) {
                return const SizedBox(height: 60);
              }
              final Code code = codes[index];
              return CodeListTile(code: code);
            },
          );
        },
      ),
    );
  }
}
