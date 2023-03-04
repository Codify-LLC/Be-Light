import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'first_time_hello_model.dart';
export 'first_time_hello_model.dart';

class FirstTimeHelloWidget extends StatefulWidget {
  const FirstTimeHelloWidget({Key? key}) : super(key: key);

  @override
  _FirstTimeHelloWidgetState createState() => _FirstTimeHelloWidgetState();
}

class _FirstTimeHelloWidgetState extends State<FirstTimeHelloWidget> {
  late FirstTimeHelloModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FirstTimeHelloModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFEFAF5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(-1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(24.0, 80.0, 0.0, 0.0),
                    child: Text(
                      'Hi <Name>,\nhow are you today?',
                      textAlign: TextAlign.start,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Nunito',
                            color: Color(0xFF3AB4CF),
                            fontSize: 28.0,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 66.0, 0.0, 66.0),
                  child: Image.asset(
                    'assets/images/spa_black_48dp_1.png',
                    width: 100.0,
                    height: 100.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(27.0, 0.0, 27.0, 0.0),
                  child: Text(
                    'Let\'s go on a journey of self-discovery. Step into the future with beautiful light & sound vibrations. ',
                    textAlign: TextAlign.start,
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Nunito',
                          color: Color(0xFF17496E),
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 76.0, 0.0, 32.0),
                  child: Container(
                    width: 342.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.21,
                          color: Color(0xFFA05009),
                          offset: Offset(0.0, 1.77),
                        )
                      ],
                      gradient: LinearGradient(
                        colors: [Color(0xFFA05009), Color(0xFFF8B77C)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(-1.0, 0.0),
                        end: AlignmentDirectional(1.0, 0),
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                    ),
                    child: InkWell(
                      onTap: () async {
                        context.pushNamed('FreeSessionDetailPage');
                      },
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 11.0, 0.0),
                            child: Image.asset(
                              'assets/images/Group.png',
                              width: 18.0,
                              height: 16.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(
                            'Start welcome journey',
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Nunito',
                                      color: Color(0xFFFAFAFA),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  onTap: () async {
                    context.pushNamed('Session');
                  },
                  child: Container(
                    width: 342.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2.21,
                          color: Color(0xFFA05009),
                          offset: Offset(0.0, 1.77),
                        )
                      ],
                      gradient: LinearGradient(
                        colors: [Color(0xFFFBD2AD), Color(0xFFFDECDD)],
                        stops: [0.0, 1.0],
                        begin: AlignmentDirectional(-1.0, 0.0),
                        end: AlignmentDirectional(1.0, 0),
                      ),
                      borderRadius: BorderRadius.circular(24.0),
                      border: Border.all(
                        color: Color(0xFFF8B77C),
                        width: 1.0,
                      ),
                    ),
                    child: Align(
                      alignment: AlignmentDirectional(0.0, 0.0),
                      child: Text(
                        'Discover App first',
                        style: FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Nunito',
                              color: Color(0xFFA05009),
                              fontSize: 16.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
