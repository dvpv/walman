import 'package:flutter/material.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/components/code_list_tile.dart';

class CodesPage extends StatelessWidget {
  const CodesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BundleContainer(
        builder: (BuildContext context, Bundle bundle) {
          final List<Code> codes = bundle.codes.toList()..sort((Code a, Code b) => b.timesAccessed - a.timesAccessed);
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: codes.length,
            itemBuilder: (BuildContext context, int index) {
              final Code code = codes[index];
              return CodeListTile(code: code);
            },
          );
        },
      ),
    );
  }
}
