// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import 'login_screen.dart' as _i2;
import 'reader_auth_guard.dart' as _i5;
import 'reader_screen.dart' as _i1;

class ReaderRouter extends _i3.RootStackRouter {
  ReaderRouter(
      {_i4.GlobalKey<_i4.NavigatorState>? navigatorKey,
      required this.readerAuthGuard})
      : super(navigatorKey);

  final _i5.ReaderAuthGuard readerAuthGuard;

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    ReaderRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ReaderRouteArgs>(
          orElse: () =>
              ReaderRouteArgs(bookId: queryParams.optString('bookid')));
      return _i3.MaterialPageX<_i1.ReaderScreen>(
          routeData: routeData,
          child: _i1.ReaderScreen(key: args.key, bookId: args.bookId));
    },
    LoginRoute.name: (routeData) {
      return _i3.MaterialPageX<_i2.LoginScreen>(
          routeData: routeData, child: const _i2.LoginScreen());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig('/#redirect',
            path: '/', redirectTo: '/reader', fullMatch: true),
        _i3.RouteConfig(ReaderRoute.name,
            path: '/reader', guards: [readerAuthGuard]),
        _i3.RouteConfig(LoginRoute.name, path: '/login')
      ];
}

/// generated route for
/// [_i1.ReaderScreen]
class ReaderRoute extends _i3.PageRouteInfo<ReaderRouteArgs> {
  ReaderRoute({_i4.Key? key, required String? bookId})
      : super(ReaderRoute.name,
            path: '/reader',
            args: ReaderRouteArgs(key: key, bookId: bookId),
            rawQueryParams: {'bookid': bookId});

  static const String name = 'ReaderRoute';
}

class ReaderRouteArgs {
  const ReaderRouteArgs({this.key, required this.bookId});

  final _i4.Key? key;

  final String? bookId;

  @override
  String toString() {
    return 'ReaderRouteArgs{key: $key, bookId: $bookId}';
  }
}

/// generated route for
/// [_i2.LoginScreen]
class LoginRoute extends _i3.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login');

  static const String name = 'LoginRoute';
}
