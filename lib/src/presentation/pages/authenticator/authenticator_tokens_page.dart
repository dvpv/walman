import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:walman/src/actions/ui/index.dart';
import 'package:walman/src/containers/bundle_container.dart';
import 'package:walman/src/containers/trigger_update_container.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/authenticator/authenticator_token_card.dart';
import 'package:walman/src/presentation/pages/authenticator/no_authenticators_page.dart';

const int _kUpdateIntervalSeconds = 1;

class AuthenticatorPage extends StatefulWidget {
  const AuthenticatorPage({Key? key}) : super(key: key);

  static const String title = 'Authenticator';

  @override
  State<AuthenticatorPage> createState() => _AuthenticatorPageState();
}

class _AuthenticatorPageState extends State<AuthenticatorPage> {
  late final Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: _kUpdateIntervalSeconds), (_) {
      // Trigger an ui update each second to update the timers for the tokens
      StoreProvider.of<AppState>(context, listen: false).dispatch(const TriggerUpdate());
    });
  }

  @override
  void dispose() {
    if (_timer.isActive) {
      _timer.cancel();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BundleContainer(
      builder: (BuildContext context, Bundle bundle) {
        if (bundle.otpTokens.isEmpty) {
          return const NoAuthenticatorTokensPage();
        }
        return TriggerUpdateContainer(
          builder: (BuildContext context, _) {
            return ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: bundle.otpTokens.length,
              itemBuilder: (BuildContext context, int index) {
                final OTPToken token = bundle.otpTokens[index];
                return AuthenticatorTokenCard(token: token);
              },
            );
          },
        );
      },
    );
  }
}
