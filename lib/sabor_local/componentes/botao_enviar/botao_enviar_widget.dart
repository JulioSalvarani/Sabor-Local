import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'botao_enviar_model.dart';
export 'botao_enviar_model.dart';

class BotaoEnviarWidget extends StatefulWidget {
  const BotaoEnviarWidget({super.key});

  @override
  State<BotaoEnviarWidget> createState() => _BotaoEnviarWidgetState();
}

class _BotaoEnviarWidgetState extends State<BotaoEnviarWidget> {
  late BotaoEnviarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotaoEnviarModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0.0, 0.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 100),
        curve: Curves.bounceOut,
        width: MediaQuery.sizeOf(context).width * 0.8,
        height: 40.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).customColor18,
          borderRadius: BorderRadius.circular(24.0),
        ),
        child: Align(
          alignment: AlignmentDirectional(0.0, 0.0),
          child: Text(
            'ENVIAR',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.bold,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
          ),
        ),
      ),
    );
  }
}
