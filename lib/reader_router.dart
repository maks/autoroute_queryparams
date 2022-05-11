import 'package:auto_route/auto_route.dart';

import 'login_screen.dart';
import 'reader_auth_guard.dart';
import 'reader_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute<ReaderScreen>(
      initial: true,
      path: "/reader",
      page: ReaderScreen,
      guards: [
        ReaderAuthGuard,
      ],
    ),
    AutoRoute<LoginScreen>(
      path: "/login",
      page: LoginScreen,
    ),
  ],
)
class $ReaderRouter {}
