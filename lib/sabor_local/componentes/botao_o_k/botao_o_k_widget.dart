import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'botao_o_k_model.dart';
export 'botao_o_k_model.dart';

class BotaoOKWidget extends StatefulWidget {
  const BotaoOKWidget({super.key});

  @override
  State<BotaoOKWidget> createState() => _BotaoOKWidgetState();
}

class _BotaoOKWidgetState extends State<BotaoOKWidget> {
  late BotaoOKModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BotaoOKModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
