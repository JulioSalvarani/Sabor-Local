import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'termos_de_servico_model.dart';
export 'termos_de_servico_model.dart';

class TermosDeServicoWidget extends StatefulWidget {
  const TermosDeServicoWidget({super.key});

  static String routeName = 'Termos_de_Servico';
  static String routePath = '/termosDeServico';

  @override
  State<TermosDeServicoWidget> createState() => _TermosDeServicoWidgetState();
}

class _TermosDeServicoWidgetState extends State<TermosDeServicoWidget> {
  late TermosDeServicoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosDeServicoModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 0.18,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).customColor18,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 8.0,
                        color: Color(0x33000000),
                        offset: Offset(
                          2.0,
                          2.0,
                        ),
                      )
                    ],
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            16.0, 8.0, 16.0, 0.0),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.safePop();
                          },
                          child: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                            size: 24.0,
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 8.0, 0.0, 0.0),
                          child: Text(
                            'Termos de Serviço',
                            style: FlutterFlowTheme.of(context)
                                .headlineLarge
                                .override(
                                  fontFamily: FlutterFlowTheme.of(context)
                                      .headlineLargeFamily,
                                  color: Colors.white,
                                  fontSize: 30.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                  shadows: [
                                    Shadow(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      offset: Offset(2.0, 2.0),
                                      blurRadius: 2.0,
                                    )
                                  ],
                                  useGoogleFonts: !FlutterFlowTheme.of(context)
                                      .headlineLargeIsCustom,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 32.0, 16.0, 0.0),
                            child: Text(
                              'Bem-vindo ao Sabor Local!\n\nEstes Termos de Serviço (\"Termos\") regulam o seu uso do site e aplicativo Sabor Local (coletivamente, a \"Plataforma\"), que conecta você a autênticas experiências gastronômicas mineiras. Ao acessar ou usar nossa Plataforma, você concorda em cumprir e estar legalmente vinculado a estes Termos.\n\n1. Aceitação dos Termos\nAo criar uma conta, fazer um pedido ou simplesmente navegar em nossa Plataforma, você declara que é maior de 18 anos, tem capacidade legal para contratar e aceita integralmente todas as condições aqui estabelecidas. Se você estiver usando os serviços em nome de uma empresa, você declara que tem autoridade para vinculá-la a estes Termos. Leia este documento com atenção.\n\n2. Descrição dos Serviços\nO Sabor Local atua como um marketplace digital, facilitando a conexão entre usuários (\"Clientes\") e estabelecimentos parceiros (\"Parceiros\") que comercializam produtos e experiências da culinária mineira. Nossos serviços incluem:\n\n    Divulgação de cardápios e estabelecimentos.\n\n    Processamento de pedidos e pagamentos.\n\n    Fornecimento de um canal de comunicação entre Clientes e Parceiros.\n\nÉ crucial entender que o Sabor Local não é o fabricante, vendedor ou prestador direto dos alimentos. Os Parceiros são os únicos responsáveis pela qualidade, preparo, segurança, embalagem e entrega dos produtos, bem como pela fidelidade às receitas e tradições mineiras anunciadas.\n\n3. Cadastro e Conta do Usuário\n\n    Veracidade das Informações: Você se compromete a fornecer informações precisas, completas e atualizadas durante o cadastro.\n\n    Sigura da Conta: Sua sença é pessoal e intransferível. Você é integralmente responsável por todas as atividades realizadas em sua conta. Notifique-nos imediatamente sobre qualquer uso não autorizado.\n\n    Finalidade do Uso: A Plataforma é destinada ao uso de consumidor final. A revenda de produtos adquiridos é expressamente proibida sem nossa autorização prévia por escrito.\n\n4. Realização de Pedidos e Pagamento\n\n    Confirmação do Pedido: Ao realizar um pedido, você manifesta interesse de compra. A contratação é considerada firme apenas com a confirmação do pedido pelo Parceiro e a confirmação do pagamento pelo Sabor Local.\n\n    Métodos de Pagamento: Aceitamos cartões de crédito, débito, PIX e outras formas de pagamento disponíveis na Plataforma. O pagamento é processado de forma segura por gateways de terceiros.\n\n    Preços e Taxas: Os preços são definidos pelos Parceiros. O Sabor Local pode cobrar taxas de serviço e de entrega, que serão claramente informadas antes da finalização do pedido.\n\n5. Política de Entrega\nOs prazos e condições de entrega são de responsabilidade do Parceiro ou do serviço de entrega contratado. O Sabor Local não se responsabiliza por atrasos, extravios ou danos aos produtos durante a entrega, mas atuará como mediador para facilitar a resolução entre o Cliente e o Parceiro/entregador.\n\n6. Política de Trocas e Reembolsos\n\n    Produtos com Defeito ou Divergência: Em caso de produto danificado, em mau estado ou divergente do pedido, o Cliente deve contatar o Suporte do Sabor Local imediatamente após o recebimento, fornecendo fotos e/ou descrição detalhada do ocorrido. Analisaremos o caso em conjunto com o Parceiro para determinar a melhor solução (reembolso, crédito ou reposição do pedido).\n\n    Arrependimento: Não aceitamos cancelamentos por arrependimento devido à natureza perecível dos produtos. Pedidos somente podem ser cancelados se a confirmação do Parceiro ainda não tiver ocorrido.\n\n7. Conduta do Usuário\nÉ proibido utilizar a Plataforma para:\n\n    Publicar conteúdo falso, difamatório, obsceno ou ofensivo.\n\n    Violar direitos de propriedade intelectual de terceiros ou do Sabor Local.\n\n    Praticalizar atividades fraudulentas ou que atentem contra a segurança da Plataforma.\n\n    Utilizar scripts, robôs ou outros meios automatizados para acessar ou coletar dados da Plataforma.\n\n8. Propriedade Intelectual\nTodo o conteúdo da Plataforma (logotipos, marcas, textos, gráficos, software), exceto os conteúdos dos Parceiros, é propriedade do Sabor Local ou de seus licenciadores e é protegido por leis de direitos autorais e propriedade intelectual. O uso não autorizado é estritamente proibido.\n\n9. Limitação de Responsabilidade\nO Sabor Local é fornecido \"no estado em que se encontra\" e \"conforme a disponibilidade\". Na máxima extensão permitida por lei, o Sabor Local não será responsabilizado por:\n\n    Danos diretos, indiretos, acidentais ou consequenciais resultantes do uso ou da incapacidade de usar a Plataforma.\n\n    A qualidade, segurança ou autenticidade dos produtos fornecidos pelos Parceiros.\n\n    Problemas na entrega, conduta de terceiros (Parceiros ou entregadores) ou quaisquer outros danos decorrentes de fatores fora de nosso controle direto.\n\n10. Privacidade\nA proteção dos seus dados é nossa prioridade. Nossa Política de Privacidade detalha como coletamos, usamos e protegemos suas informações pessoais.\n\n11. Rescisão\nO Sabor Local se reserva o direito de suspender ou encerrar sua conta, a seu exclusivo critério, a qualquer momento e sem aviso prévio, em caso de violação destes Termos.\n\n12. Alterações dos Termos\nPodemos modificar estes Termos a qualquer momento. As alterações entrarão em vigor após a publicação na Plataforma. O uso continuado dos serviços após as modificações signify sua aceitação dos novos Termos.\n\n13. Lei Aplicável e Foro\nEstes Termos são regidos pelas leis da República Federativa do Brasil. Qualquer disputa será dirimida no Foro da Comarca da sede da empresa Sabor Local, com expressa renúncia a qualquer outro.\n\n14. Contato\nEm caso de dúvidas sobre estes Termos, entre em contato conosco:\n\n    E-mail: suporte@saborlocal.com.br\n\n    WhatsApp: (31) XXXX-XXXX\n\nData da última atualização: 23 de outubro de 2023.\n\nAviso Importante: Este documento é um modelo geral e não substitui a consulta a um advogado. Recomendamos fortemente que você adapte estes Termos à realidade jurídica do seu negócio com assessoria profissional.',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyMediumFamily,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    useGoogleFonts:
                                        !FlutterFlowTheme.of(context)
                                            .bodyMediumIsCustom,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: 1.0,
                    thickness: 1.0,
                    color: Color(0xFFE5E7EB),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
