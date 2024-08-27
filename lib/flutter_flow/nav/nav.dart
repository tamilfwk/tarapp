import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';
import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? const NavBarPage() : const AuthinWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? const NavBarPage() : const AuthinWidget(),
        ),
        FFRoute(
          name: 'tarai',
          path: '/tarai',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'tarai') : const TaraiWidget(),
        ),
        FFRoute(
          name: 'or',
          path: '/or',
          builder: (context, params) => const OrWidget(),
        ),
        FFRoute(
          name: 'sale',
          path: '/sale',
          builder: (context, params) => const SaleWidget(),
        ),
        FFRoute(
          name: 'menufront',
          path: '/menufront',
          builder: (context, params) => const MenufrontWidget(),
        ),
        FFRoute(
          name: 'menu',
          path: '/menu',
          builder: (context, params) => const MenuWidget(),
        ),
        FFRoute(
          name: 'pin',
          path: '/pin',
          builder: (context, params) => const PinWidget(),
        ),
        FFRoute(
          name: 'addstock',
          path: '/addstock',
          builder: (context, params) => AddstockWidget(
            id: params.getParam(
              'id',
              ParamType.int,
            ),
            stock: params.getParam(
              'stock',
              ParamType.int,
            ),
            unit: params.getParam(
              'unit',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'authin',
          path: '/authin',
          builder: (context, params) => const AuthinWidget(),
        ),
        FFRoute(
          name: 'authcr',
          path: '/authcr',
          builder: (context, params) => const AuthcrWidget(),
        ),
        FFRoute(
          name: 'settings',
          path: '/settings',
          builder: (context, params) => const SettingsWidget(),
        ),
        FFRoute(
          name: 'notionint',
          path: '/notionint',
          builder: (context, params) => const NotionintWidget(),
        ),
        FFRoute(
          name: 'proddetails',
          path: '/proddetails',
          builder: (context, params) => ProddetailsWidget(
            items: params.getParam<ItemsRow>(
              'items',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: 'cart',
          path: '/cart',
          builder: (context, params) => const CartWidget(),
        ),
        FFRoute(
          name: 'an',
          path: '/an',
          builder: (context, params) => params.isEmpty
              ? const NavBarPage(initialPage: 'an')
              : NavBarPage(
                  initialPage: 'an',
                  page: AnWidget(
                    view: params.getParam(
                      'view',
                      ParamType.int,
                    ),
                  ),
                ),
        ),
        FFRoute(
          name: 'stores',
          path: '/stores',
          builder: (context, params) => const StoresWidget(),
        ),
        FFRoute(
          name: 'people',
          path: '/people',
          builder: (context, params) => const PeopleWidget(),
        ),
        FFRoute(
          name: 'texts',
          path: '/texts',
          builder: (context, params) => TextsWidget(
            a2img: params.getParam(
              'a2img',
              ParamType.String,
            ),
            a2: params.getParam(
              'a2',
              ParamType.String,
            ),
            a2mail: params.getParam(
              'a2mail',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: 'inventory',
          path: '/inventory',
          builder: (context, params) => const InventoryWidget(),
        ),
        FFRoute(
          name: 'item',
          path: '/item',
          builder: (context, params) => ItemWidget(
            mode: params.getParam(
              'mode',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 's4items',
          path: '/s4items',
          builder: (context, params) => const S4itemsWidget(),
        ),
        FFRoute(
          name: 'pathai',
          path: '/pathai',
          builder: (context, params) => const PathaiWidget(),
        ),
        FFRoute(
          name: 'aa',
          path: '/aa',
          builder: (context, params) => const AaWidget(),
        ),
        FFRoute(
          name: 'files',
          path: '/files',
          builder: (context, params) => const FilesWidget(),
        ),
        FFRoute(
          name: 'tar',
          path: '/tar',
          builder: (context, params) => const TarWidget(),
        ),
        FFRoute(
          name: 'orai',
          path: '/orai',
          builder: (context, params) =>
              params.isEmpty ? const NavBarPage(initialPage: 'orai') : const OraiWidget(),
        ),
        FFRoute(
          name: 'usages',
          path: '/usages',
          builder: (context, params) => const UsagesWidget(),
        ),
        FFRoute(
          name: 'plans',
          path: '/plans',
          builder: (context, params) => const PlansWidget(),
        ),
        FFRoute(
          name: 'Itemgroup',
          path: '/itemgroup',
          builder: (context, params) => const ItemgroupWidget(),
        ),
        FFRoute(
          name: 's5par',
          path: '/s5par',
          builder: (context, params) => const S5parWidget(),
        ),
        FFRoute(
          name: 's3ig',
          path: '/s3ig',
          builder: (context, params) => const S3igWidget(),
        ),
        FFRoute(
          name: 's1a',
          path: '/s1a',
          builder: (context, params) => const S1aWidget(),
        ),
        FFRoute(
          name: 's2tar',
          path: '/s2tar',
          builder: (context, params) => const S2tarWidget(),
        ),
        FFRoute(
          name: 'items',
          path: '/items',
          builder: (context, params) => const ItemsWidget(),
        ),
        FFRoute(
          name: 'notionb',
          path: '/notionb',
          builder: (context, params) => const NotionbWidget(),
        ),
        FFRoute(
          name: 's5par2',
          path: '/s5par2',
          builder: (context, params) => const S5par2Widget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/authin';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Container(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  child: Center(
                    child: Image.asset(
                      'assets/images/tarlogo.png',
                      width: 100.0,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => const TransitionInfo(
        hasTransition: true,
        transitionType: PageTransitionType.fade,
        duration: Duration(milliseconds: 0),
      );
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
