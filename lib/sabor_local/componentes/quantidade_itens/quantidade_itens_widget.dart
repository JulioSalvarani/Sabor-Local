import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/sabor_local/componentes/alert_praauth_token/alert_praauth_token_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'quantidade_itens_model.dart';
export 'quantidade_itens_model.dart';

class QuantidadeItensWidget extends StatefulWidget {
  const QuantidadeItensWidget({
    super.key,
    required this.qntitem,
    required this.produtoinfo,
  });

  final int? qntitem;
  final dynamic produtoinfo;

  @override
  State<QuantidadeItensWidget> createState() => _QuantidadeItensWidgetState();
}

class _QuantidadeItensWidgetState extends State<QuantidadeItensWidget> {
  late QuantidadeItensModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => QuantidadeItensModel());

    _model.textController ??=
        TextEditingController(text: widget.qntitem?.toString());
    _model.textFieldFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Builder(
      builder: (context) => Container(
        width: 85.0,
        child: TextFormField(
          controller: _model.textController,
          focusNode: _model.textFieldFocusNode,
          onFieldSubmitted: (_) async {
            _model.qntItemInteger = int.tryParse(_model.textController.text);
            safeSetState(() {});
            if (_model.qntItemInteger! <=
                getJsonField(
                  widget.produtoinfo,
                  r'''$['product_qtd_disp']''',
                )) {
              await actions.criaPedido(
                FFAppState().authToken,
                getJsonField(
                  widget.produtoinfo,
                  r'''$['produto_id']''',
                ).toString(),
                int.parse(_model.textController.text),
              );
              await showDialog(
                context: context,
                builder: (dialogContext) {
                  return Dialog(
                    elevation: 0,
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    alignment: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    child: AlertPraauthTokenWidget(
                      titulo: '',
                      menssagem: 'correct, reloading',
                    ),
                  );
                },
              );

              context.pushNamed(PerfilWidget.routeName);
            } else {
              await showDialog(
                context: context,
                builder: (dialogContext) {
                  return Dialog(
                    elevation: 0,
                    insetPadding: EdgeInsets.zero,
                    backgroundColor: Colors.transparent,
                    alignment: AlignmentDirectional(0.0, 0.0)
                        .resolve(Directionality.of(context)),
                    child: AlertPraauthTokenWidget(
                      titulo: '',
                      menssagem: 'fail - muito',
                    ),
                  );
                },
              );
            }
          },
          autofocus: false,
          enabled: true,
          obscureText: false,
          decoration: InputDecoration(
            isDense: true,
            labelText: 'Quantidade',
            labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelMediumIsCustom,
                ),
            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).labelMediumFamily,
                  letterSpacing: 0.0,
                  useGoogleFonts:
                      !FlutterFlowTheme.of(context).labelMediumIsCustom,
                ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).secondary,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).tertiary,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: FlutterFlowTheme.of(context).error,
                width: 1.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            filled: true,
            fillColor: FlutterFlowTheme.of(context).primary,
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                letterSpacing: 0.0,
                useGoogleFonts:
                    !FlutterFlowTheme.of(context).bodyMediumIsCustom,
              ),
          maxLength: 3,
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          buildCounter: (context,
                  {required currentLength, required isFocused, maxLength}) =>
              null,
          keyboardType: TextInputType.number,
          cursorColor: FlutterFlowTheme.of(context).tertiary,
          enableInteractiveSelection: true,
          validator: _model.textControllerValidator.asValidator(context),
          inputFormatters: [FilteringTextInputFormatter.allow(RegExp('[0-9]'))],
        ),
      ),
    );
  }
}
