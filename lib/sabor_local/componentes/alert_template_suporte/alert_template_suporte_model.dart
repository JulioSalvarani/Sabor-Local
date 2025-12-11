import '/flutter_flow/flutter_flow_util.dart';
import 'alert_template_suporte_widget.dart' show AlertTemplateSuporteWidget;
import 'package:flutter/material.dart';

class AlertTemplateSuporteModel
    extends FlutterFlowModel<AlertTemplateSuporteWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Custom Action - enviaProblemaSuporte] action in Container widget.
  bool? respostaSuporte;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
