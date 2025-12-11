import '/flutter_flow/flutter_flow_util.dart';
import 'chat_widget.dart' show ChatWidget;
import 'package:flutter/material.dart';

class ChatModel extends FlutterFlowModel<ChatWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Textbox widget.
  FocusNode? textboxFocusNode;
  TextEditingController? textboxTextController;
  String? Function(BuildContext, String?)? textboxTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textboxFocusNode?.dispose();
    textboxTextController?.dispose();
  }
}
