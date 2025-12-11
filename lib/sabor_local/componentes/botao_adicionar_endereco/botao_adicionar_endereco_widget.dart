import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'botao_adicionar_endereco_model.dart';
export 'botao_adicionar_endereco_model.dart';

class BotaoAdicionarEnderecoWidget extends StatefulWidget {
  const BotaoAdicionarEnderecoWidget({super.key});

  @override
  State<BotaoAdicionarEnderecoWidget> createState() =>
      _BotaoAdicionarEnderecoWidgetState();
}

class _BotaoAdicionarEnderecoWidgetState
    extends State<BotaoAdicionarEnderecoWidget> {
  late BotaoAdicionarEnderecoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotaoAdicionarEnderecoModel());
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
            'ADICIONAR NOVO ENDEREÇO',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  font: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontStyle:
                        FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                  ),
                  color: FlutterFlowTheme.of(context).info,
                  fontSize: 14.0,
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
