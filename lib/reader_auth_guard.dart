import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'providers.dart';
import 'reader_router.gr.dart';

// This acts as a guard on screens that require the user to be logged-in
// based on example provided in: https://github.com/Milad-Akarie/auto_route_library/issues/906#issuecomment-1054803611
class ReaderAuthGuard extends AutoRedirectGuard {
  final ChangeNotifierProviderRef ref;

  ReaderAuthGuard(this.ref) {
    ref.read(authServiceProvider).accountEvents.listen((event) {
      print("got a auth event:$event");
      reevaluate();
    });
  }

  @override
  Future<void> onNavigation(NavigationResolver resolver, StackRouter router) async {
    print("AuthGuard onNavigation");
    if (await canNavigate(resolver.route)) {
      resolver.next();
    } else {
      redirect(const LoginRoute(), resolver: resolver);
    }
  }

  @override
  Future<bool> canNavigate(RouteMatch route) async {
    final account = ref.read(authServiceProvider).currentAccount;
    return account != null;
  }
}
