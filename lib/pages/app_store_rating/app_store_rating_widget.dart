import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'app_store_rating_model.dart';
export 'app_store_rating_model.dart';

class AppStoreRatingWidget extends StatefulWidget {
  const AppStoreRatingWidget({Key? key}) : super(key: key);

  @override
  _AppStoreRatingWidgetState createState() => _AppStoreRatingWidgetState();
}

class _AppStoreRatingWidgetState extends State<AppStoreRatingWidget> {
  late AppStoreRatingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppStoreRatingModel());
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(18.0, 40.0, 18.0, 0.0),
                      child: Text(
                        'Thanks for your feedback ',
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
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 96.0, 0.0, 0.0),
                    child: Container(
                      width: 342.0,
                      height: 72.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFFEFAF5),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Support us by rating in the App Store',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Nunito',
                                    color: Color(0xFF17496E),
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 29.0, 0.0, 0.0),
                    child: RatingBar.builder(
                      onRatingUpdate: (newValue) =>
                          setState(() => _model.ratingBarValue = newValue),
                      itemBuilder: (context, index) => Icon(
                        Icons.star_sharp,
                        color: Color(0xFFA05009),
                      ),
                      direction: Axis.horizontal,
                      initialRating: _model.ratingBarValue ??= 3.0,
                      unratedColor: Color(0xFFFBD2AD),
                      itemCount: 5,
                      itemPadding: EdgeInsets.fromLTRB(0.0, 0.0, 28.0, 0.0),
                      itemSize: 40.0,
                      glowColor: Color(0xFFA05009),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 40.0),
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
                      'Maybe later',
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
    );
  }
}
