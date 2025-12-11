import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'botao_fechar_x_model.dart';
export 'botao_fechar_x_model.dart';

class BotaoFecharXWidget extends StatefulWidget {
  const BotaoFecharXWidget({super.key});

  @override
  State<BotaoFecharXWidget> createState() => _BotaoFecharXWidgetState();
}

class _BotaoFecharXWidgetState extends State<BotaoFecharXWidget> {
  late BotaoFecharXModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotaoFecharXModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 4.0),
      child: FlutterFlowIconButton(
        borderColor: Colors.transparent,
        borderRadius: 30.0,
        borderWidth: 1.0,
        buttonSize: 44.0,
        fillColor: FlutterFlowTheme.of(context).alternate,
        icon: Icon(
          Icons.close_rounded,
          color: FlutterFlowTheme.of(context).customColor18,
          size: 24.0,
        ),
        onPressed: () {
          print('IconButton pressed ...');
        },
      ),
    );
  }
}
