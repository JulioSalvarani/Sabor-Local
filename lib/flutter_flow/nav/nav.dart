import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/auth/custom_auth/custom_auth_user_provider.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  SaborLocalAuthUser? initialUser;
  SaborLocalAuthUser? user;
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

  void update(SaborLocalAuthUser newUser) {
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
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : BemVindoWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : BemVindoWidget(),
        ),
        FFRoute(
          name: MetodosDePagamentoWidget.routeName,
          path: MetodosDePagamentoWidget.routePath,
          builder: (context, params) => MetodosDePagamentoWidget(
            codigopedido: params.getParam(
              'codigopedido',
              ParamType.String,
            ),
            observacao: params.getParam(
              'observacao',
              ParamType.String,
            ),
            clienteInfo: params.getParam(
              'clienteInfo',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: ListaChatWidget.routeName,
          path: ListaChatWidget.routePath,
          builder: (context, params) => ListaChatWidget(),
        ),
        FFRoute(
          name: CheckoutWidget.routeName,
          path: CheckoutWidget.routePath,
          builder: (context, params) => CheckoutWidget(
            codigopedido: params.getParam(
              'codigopedido',
              ParamType.int,
            ),
            statuspedido: params.getParam(
              'statuspedido',
              ParamType.int,
            ),
            clienteInfo: params.getParam(
              'clienteInfo',
              ParamType.JSON,
            ),
            pedidoinfo: params.getParam(
              'pedidoinfo',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: SuporteWidget.routeName,
          path: SuporteWidget.routePath,
          builder: (context, params) => SuporteWidget(),
        ),
        FFRoute(
          name: PaginaPrincipalWidget.routeName,
          path: PaginaPrincipalWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Pagina_Principal')
              : PaginaPrincipalWidget(),
        ),
        FFRoute(
          name: PerfilWidget.routeName,
          path: PerfilWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Perfil')
              : PerfilWidget(),
        ),
        FFRoute(
          name: NotificaWidget.routeName,
          path: NotificaWidget.routePath,
          builder: (context, params) => NotificaWidget(),
        ),
        FFRoute(
          name: RecuperarSenhaWidget.routeName,
          path: RecuperarSenhaWidget.routePath,
          builder: (context, params) => RecuperarSenhaWidget(),
        ),
        FFRoute(
          name: EditarPerfilWidget.routeName,
          path: EditarPerfilWidget.routePath,
          builder: (context, params) => EditarPerfilWidget(
            infodousuariojson: params.getParam(
              'infodousuariojson',
              ParamType.JSON,
            ),
          ),
        ),
        FFRoute(
          name: ChatWidget.routeName,
          path: ChatWidget.routePath,
          builder: (context, params) => ChatWidget(),
        ),
        FFRoute(
          name: EnderecosWidget.routeName,
          path: EnderecosWidget.routePath,
          builder: (context, params) => EnderecosWidget(),
        ),
        FFRoute(
          name: CodigoWidget.routeName,
          path: CodigoWidget.routePath,
          builder: (context, params) => CodigoWidget(),
        ),
        FFRoute(
          name: RegistroWidget.routeName,
          path: RegistroWidget.routePath,
          builder: (context, params) => RegistroWidget(),
        ),
        FFRoute(
          name: LoginWidget.routeName,
          path: LoginWidget.routePath,
          builder: (context, params) => LoginWidget(),
        ),
        FFRoute(
          name: RegistroParte2Widget.routeName,
          path: RegistroParte2Widget.routePath,
          builder: (context, params) => RegistroParte2Widget(),
        ),
        FFRoute(
          name: BemVindoWidget.routeName,
          path: BemVindoWidget.routePath,
          builder: (context, params) => BemVindoWidget(),
        ),
        FFRoute(
          name: CadastrarNovoCartaoWidget.routeName,
          path: CadastrarNovoCartaoWidget.routePath,
          builder: (context, params) => CadastrarNovoCartaoWidget(),
        ),
        FFRoute(
          name: HistoricoPedidosWidget.routeName,
          path: HistoricoPedidosWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Historico_Pedidos')
              : HistoricoPedidosWidget(),
        ),
        FFRoute(
          name: NovoEnderecoWidget.routeName,
          path: NovoEnderecoWidget.routePath,
          builder: (context, params) => NovoEnderecoWidget(),
        ),
        FFRoute(
          name: TermosDeServicoWidget.routeName,
          path: TermosDeServicoWidget.routePath,
          builder: (context, params) => TermosDeServicoWidget(),
        ),
        FFRoute(
          name: PesquisarWidget.routeName,
          path: PesquisarWidget.routePath,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'Pesquisar')
              : PesquisarWidget(),
        ),
        FFRoute(
          name: CodigoSenhaWidget.routeName,
          path: CodigoSenhaWidget.routePath,
          builder: (context, params) => CodigoSenhaWidget(),
        ),
        FFRoute(
          name: RecuperarSenhaColocarWidget.routeName,
          path: RecuperarSenhaColocarWidget.routePath,
          builder: (context, params) => RecuperarSenhaColocarWidget(),
        ),
        FFRoute(
          name: CodigoDeEntregaWidget.routeName,
          path: CodigoDeEntregaWidget.routePath,
          builder: (context, params) => CodigoDeEntregaWidget(),
        ),
        FFRoute(
          name: PaginaItemTemplateWidget.routeName,
          path: PaginaItemTemplateWidget.routePath,
          builder: (context, params) => PaginaItemTemplateWidget(
            productid: params.getParam(
              'productid',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: CategoriaTemplateWidget.routeName,
          path: CategoriaTemplateWidget.routePath,
          builder: (context, params) => CategoriaTemplateWidget(
            nomeCategoria: params.getParam(
              'nomeCategoria',
              ParamType.String,
            ),
            idcategoria: params.getParam(
              'idcategoria',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: EditarEnderecoWidget.routeName,
          path: EditarEnderecoWidget.routePath,
          builder: (context, params) => EditarEnderecoWidget(
            cep: params.getParam(
              'cep',
              ParamType.String,
            ),
            rua: params.getParam(
              'rua',
              ParamType.String,
            ),
            numero: params.getParam(
              'numero',
              ParamType.String,
            ),
            complemento: params.getParam(
              'complemento',
              ParamType.String,
            ),
            referencia: params.getParam(
              'referencia',
              ParamType.String,
            ),
            apelido: params.getParam(
              'apelido',
              ParamType.String,
            ),
            padrao: params.getParam(
              'padrao',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: PaginaEditarPerfilWidget.routeName,
          path: PaginaEditarPerfilWidget.routePath,
          builder: (context, params) => PaginaEditarPerfilWidget(
            infodousuariojson: params.getParam(
              'infodousuariojson',
              ParamType.JSON,
            ),
          ),
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
            return '/bemVindo';
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
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: SpinKitPulse(
                      color: FlutterFlowTheme.of(context).primary,
                      size: 50.0,
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

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
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
