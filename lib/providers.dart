import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'auth_service.dart';
import 'reader_auth_guard.dart';
import 'reader_router.gr.dart';

final authServiceProvider = Provider<AuthService>((ref) => AuthService());

// we need a router provider so that a ref can be passed into the AuthGuard
// see: https://github.com/Milad-Akarie/auto_route_library/issues/894#issuecomment-995521921
final previewReaderRouterProvider = ChangeNotifierProvider<ReaderRouter>((ref) {
  return ReaderRouter(readerAuthGuard: ReaderAuthGuard(ref));
});
