import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_parte2_widget.dart' show RegistroParte2Widget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class RegistroParte2Model extends FlutterFlowModel<RegistroParte2Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for cep widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  late MaskTextInputFormatter cepMask;
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // Stores action output result for [Backend Call - API (chamaendereco)] action in cep widget.
  ApiCallResponse? funcaocompletacep;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (chamaendereco)] action in Checkbox widget.
  ApiCallResponse? escolhapreecnhercep;
  // State field(s) for rualogradouro widget.
  FocusNode? rualogradouroFocusNode;
  TextEditingController? rualogradouroTextController;
  String? Function(BuildContext, String?)? rualogradouroTextControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for numero widget.
  FocusNode? numeroFocusNode;
  TextEditingController? numeroTextController;
  String? Function(BuildContext, String?)? numeroTextControllerValidator;
  // State field(s) for complemento widget.
  FocusNode? complementoFocusNode;
  TextEditingController? complementoTextController;
  String? Function(BuildContext, String?)? complementoTextControllerValidator;
  // State field(s) for referencia widget.
  FocusNode? referenciaFocusNode;
  TextEditingController? referenciaTextController;
  String? Function(BuildContext, String?)? referenciaTextControllerValidator;
  // Stores action output result for [Custom Action - pegaEndereco] action in referencia widget.
  bool? chamaEndPointCopy;
  // State field(s) for apelido widget.
  FocusNode? apelidoFocusNode;
  TextEditingController? apelidoTextController;
  String? Function(BuildContext, String?)? apelidoTextControllerValidator;
  // Stores action output result for [Custom Action - pegaEndereco] action in Button widget.
  bool? chamaEndPoint;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for UF widget.
  FocusNode? ufFocusNode;
  TextEditingController? ufTextController;
  String? Function(BuildContext, String?)? ufTextControllerValidator;
  // State field(s) for estado widget.
  FocusNode? estadoFocusNode;
  TextEditingController? estadoTextController;
  String? Function(BuildContext, String?)? estadoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    cepFocusNode?.dispose();
    cepTextController?.dispose();

    rualogradouroFocusNode?.dispose();
    rualogradouroTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    numeroFocusNode?.dispose();
    numeroTextController?.dispose();

    complementoFocusNode?.dispose();
    complementoTextController?.dispose();

    referenciaFocusNode?.dispose();
    referenciaTextController?.dispose();

    apelidoFocusNode?.dispose();
    apelidoTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    ufFocusNode?.dispose();
    ufTextController?.dispose();

    estadoFocusNode?.dispose();
    estadoTextController?.dispose();
  }
}
