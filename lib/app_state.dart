import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _authToken = prefs.getString('ff_authToken') ?? _authToken;
    });
    _safeInit(() {
      _logintentativas = prefs.getInt('ff_logintentativas') ?? _logintentativas;
    });
    _safeInit(() {
      _intro = prefs.getBool('ff_intro') ?? _intro;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  dynamic _respEndPoint;
  dynamic get respEndPoint => _respEndPoint;
  set respEndPoint(dynamic value) {
    _respEndPoint = value;
  }

  dynamic _respEndPointError;
  dynamic get respEndPointError => _respEndPointError;
  set respEndPointError(dynamic value) {
    _respEndPointError = value;
  }

  String _authToken = '';
  String get authToken => _authToken;
  set authToken(String value) {
    _authToken = value;
    prefs.setString('ff_authToken', value);
  }

  int _logintentativas = 0;
  int get logintentativas => _logintentativas;
  set logintentativas(int value) {
    _logintentativas = value;
    prefs.setInt('ff_logintentativas', value);
  }

  String _email = '';
  String get email => _email;
  set email(String value) {
    _email = value;
  }

  String _senha = '';
  String get senha => _senha;
  set senha(String value) {
    _senha = value;
  }

  String _codigo = '';
  String get codigo => _codigo;
  set codigo(String value) {
    _codigo = value;
  }

  String _IPuser = '';
  String get IPuser => _IPuser;
  set IPuser(String value) {
    _IPuser = value;
  }

  dynamic _produtos;
  dynamic get produtos => _produtos;
  set produtos(dynamic value) {
    _produtos = value;
  }

  dynamic _categorias;
  dynamic get categorias => _categorias;
  set categorias(dynamic value) {
    _categorias = value;
  }

  dynamic _pedidos;
  dynamic get pedidos => _pedidos;
  set pedidos(dynamic value) {
    _pedidos = value;
  }

  bool _intro = true;
  bool get intro => _intro;
  set intro(bool value) {
    _intro = value;
    prefs.setBool('ff_intro', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
