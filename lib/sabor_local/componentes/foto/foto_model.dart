import '/flutter_flow/flutter_flow_util.dart';
import 'foto_widget.dart' show FotoWidget;
import 'package:flutter/material.dart';

class FotoModel extends FlutterFlowModel<FotoWidget> {
  ///  Local state fields for this component.

  String? imagematual;

  ///  State fields for stateful widgets in this component.

  bool isDataUploading_fotoenviada = false;
  FFUploadedFile uploadedLocalFile_fotoenviada =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Custom Action - enviarFoto] action in Button widget.
  dynamic foto;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
