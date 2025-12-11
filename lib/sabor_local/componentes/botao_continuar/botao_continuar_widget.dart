import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'botao_continuar_model.dart';
export 'botao_continuar_model.dart';

class BotaoContinuarWidget extends StatefulWidget {
  const BotaoContinuarWidget({super.key});

  @override
  State<BotaoContinuarWidget> createState() => _BotaoContinuarWidgetState();
}

class _BotaoContinuarWidgetState extends State<BotaoContinuarWidget> {
  late BotaoContinuarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotaoContinuarModel());
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
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.7,
        height: 50.0,
        child: Stack(
          alignment: AlignmentDirectional(0.0, 0.0),
          children: [
            Align(
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
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, 0.0),
              child: Text(
                'CONTINUAR',
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
                      fontStyle:
                          FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
