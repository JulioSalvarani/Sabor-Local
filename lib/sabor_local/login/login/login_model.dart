import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  Local state fields for this page.

  bool mostrarqueesqeuceusenha = false;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - getPublicIP] action in Login widget.
  String? iPAtual;
  // Stores action output result for [Custom Action - pegaCategoria] action in Login widget.
  dynamic categorias;
  // Stores action output result for [Custom Action - pegaTodosProdutos] action in Login widget.
  dynamic todosProdutos;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // Stores action output result for [Custom Action - fazLogIn] action in password widget.
  String? loginSub;
  // Stores action output result for [Custom Action - fazLogIn] action in Button widget.
  String? login;
  // Stores action output result for [Custom Action - pegaNovidadesUsuario] action in Button widget.
  dynamic pegounovidades;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 60000;
  int timerMilliseconds = 60000;
  String timerValue = StopWatchTimer.getDisplayTime(
    60000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    timerController.dispose();
  }
}
