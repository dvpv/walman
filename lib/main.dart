import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:walman/src/actions/storage/index.dart';
import 'package:walman/src/data/auth/firebase_auth_api.dart';
import 'package:walman/src/data/storage/blockchain_storage_api.dart';
import 'package:walman/src/data/storage/firestore_api.dart';
import 'package:walman/src/data/storage/secure_storage_api.dart';
import 'package:walman/src/epics/app_epic.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/pages/authenticator/scan_new_authenticator.dart';
import 'package:walman/src/presentation/pages/cloud/change_password.dart';
import 'package:walman/src/presentation/pages/cloud/login_page.dart';
import 'package:walman/src/presentation/pages/cloud/signup_page.dart';
import 'package:walman/src/presentation/pages/code/code_details.dart';
import 'package:walman/src/presentation/pages/code/new_code_page.dart';
import 'package:walman/src/presentation/pages/code/scan_new_code_page.dart';
import 'package:walman/src/presentation/pages/password/new_password_page.dart';
import 'package:walman/src/presentation/pages/password/password_details.dart';
import 'package:walman/src/presentation/pages/settings/settings_page.dart';
import 'package:walman/src/presentation/pages/sync/sync_page.dart';
import 'package:walman/src/presentation/pages/wallet/wallet_page.dart';
import 'package:walman/src/presentation/start_page.dart';
import 'package:walman/src/reducers/reducer.dart';

Future<void> main() async {
  await dotenv.load();
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);
  final FirebaseFirestore firestore = FirebaseFirestore.instanceFor(app: app);
  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  final FirebaseAuthApi authApi = FirebaseAuthApi(auth: auth, firestore: firestore);
  final SecureStorageApi secureStorageApi = SecureStorageApi(secureStorage);
  final FirestoreApi firestoreApi = FirestoreApi(firestore);
  final BlockchainStorageApi blockchainStorageApi = await BlockchainStorageApi.build;
  final AppEpic epic = AppEpic(
    authApi: authApi,
    secureStorageApi: secureStorageApi,
    blockchainStorageApi: blockchainStorageApi,
    firestoreApi: firestoreApi,
  );

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(const GetMasterKeyHashStart());
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]);
  runApp(App(store: store));
}

class App extends StatelessWidget {
  const App({Key? key, required this.store}) : super(key: key);

  final Store<AppState> store;

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: store,
      child: MaterialApp(
        title: 'walman',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          appBarTheme: const AppBarTheme(
            elevation: 0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            iconTheme: IconThemeData(
              color: Colors.black,
            ),
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            border: OutlineInputBorder(),
          ),
        ),
        routes: <String, WidgetBuilder>{
          StartPage.route: (BuildContext context) => const StartPage(),
          SignupPage.route: (BuildContext context) => const SignupPage(),
          LoginPage.route: (BuildContext context) => const LoginPage(),
          NewPasswordPage.route: (BuildContext context) => const NewPasswordPage(),
          ScanNewCodePage.route: (BuildContext context) => const ScanNewCodePage(),
          ScanNewAuthenticatorPage.route: (BuildContext context) => const ScanNewAuthenticatorPage(),
          PasswordDetails.route: (BuildContext context) => const PasswordDetails(),
          NewCodePage.route: (BuildContext context) => const NewCodePage(),
          CodeDetails.route: (BuildContext context) => const CodeDetails(),
          WalletPage.route: (BuildContext context) => const WalletPage(),
          SyncPage.route: (BuildContext context) => const SyncPage(),
          SettingsPage.route: (BuildContext context) => const SettingsPage(),
          CloudChangePasswordPage.route: (BuildContext context) => const CloudChangePasswordPage(),
        },
      ),
    );
  }
}
