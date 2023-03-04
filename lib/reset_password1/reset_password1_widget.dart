import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'reset_password1_model.dart';
export 'reset_password1_model.dart';

class ResetPassword1Widget extends StatefulWidget {
  const ResetPassword1Widget({Key? key}) : super(key: key);

  @override
  _ResetPassword1WidgetState createState() => _ResetPassword1WidgetState();
}

class _ResetPassword1WidgetState extends State<ResetPassword1Widget> {
  late ResetPassword1Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ResetPassword1Model());
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
      appBar: AppBar(
        backgroundColor: Color(0xFFFEFAF5),
        automaticallyImplyLeading: true,
        title: Text(
          'Reset password',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Nunito',
                color: Color(0xFF17496E),
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
        ),
        actions: [
          Align(
            alignment: AlignmentDirectional(0.0, 0.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 26.0, 0.0),
              child: Icon(
                Icons.close_outlined,
                color: Colors.black,
                size: 24.0,
              ),
            ),
          ),
        ],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                    child: Text(
                      'Check your emails',
                      textAlign: TextAlign.center,
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
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 36.0),
                  child: Image.asset(
                    'assets/images/email_black_48dp_1.png',
                    width: 100.0,
                    height: 80.0,
                    fit: BoxFit.cover,
                  ),
                ),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text:
                            'We sent you an email with a verification link to\n',
                        style: GoogleFonts.getFont(
                          'Nunito',
                        ),
                      ),
                      TextSpan(
                        text: '[Email]',
                        style: GoogleFonts.getFont(
                          'Nunito',
                          color: Color(0xFF17496E),
                        ),
                      )
                    ],
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF17496E),
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(21.0, 56.0, 27.0, 0.0),
                  child: Text(
                    'No email received? Please check your spam. The email was sent by we-care@be-light.app.',
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyText2.override(
                          fontFamily: 'Nunito',
                          color: Color(0xFF17496E),
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
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
                        'Resend email',
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
