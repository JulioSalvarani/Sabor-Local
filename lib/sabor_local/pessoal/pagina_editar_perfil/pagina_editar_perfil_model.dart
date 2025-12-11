import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_editar_perfil_widget.dart' show PaginaEditarPerfilWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PaginaEditarPerfilModel
    extends FlutterFlowModel<PaginaEditarPerfilWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Gmail widget.
  FocusNode? gmailFocusNode;
  TextEditingController? gmailTextController;
  String? Function(BuildContext, String?)? gmailTextControllerValidator;
  // State field(s) for nome widget.
  FocusNode? nomeFocusNode;
  TextEditingController? nomeTextController;
  String? Function(BuildContext, String?)? nomeTextControllerValidator;
  // State field(s) for numerotelefone widget.
  FocusNode? numerotelefoneFocusNode;
  TextEditingController? numerotelefoneTextController;
  late MaskTextInputFormatter numerotelefoneMask;
  String? Function(BuildContext, String?)?
      numerotelefoneTextControllerValidator;
  // Stores action output result for [Custom Action - mudaInfoUsuario] action in Button widget.
  bool? mudouuser;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    gmailFocusNode?.dispose();
    gmailTextController?.dispose();

    nomeFocusNode?.dispose();
    nomeTextController?.dispose();

    numerotelefoneFocusNode?.dispose();
    numerotelefoneTextController?.dispose();
  }
}
