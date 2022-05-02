import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:walman/src/actions/auth/index.dart';
import 'package:walman/src/data/auth/firebase_auth_api.dart';
import 'package:walman/src/epics/app_epic.dart';
import 'package:walman/src/models/index.dart';
import 'package:walman/src/presentation/auth/login_page.dart';
import 'package:walman/src/presentation/auth/signup_page.dart';
import 'package:walman/src/presentation/start_page.dart';
import 'package:walman/src/reducers/reducer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final FirebaseApp app = await Firebase.initializeApp();
  final FirebaseAuth auth = FirebaseAuth.instanceFor(app: app);

  final FirebaseAuthApi authApi = FirebaseAuthApi(auth);
  final AppEpic epic = AppEpic(authApi);

  final Store<AppState> store = Store<AppState>(
    reducer,
    initialState: const AppState(),
    middleware: <Middleware<AppState>>[
      EpicMiddleware<AppState>(epic.epics),
    ],
  )..dispatch(const GetCurrentUser());

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
        routes: <String, WidgetBuilder>{
          '/': (BuildContext context) => const StartPage(),
          '/signup': (BuildContext context) => const SignupPage(),
          '/login': (BuildContext context) => const LoginPage(),
        },
      ),
    );
  }
}
