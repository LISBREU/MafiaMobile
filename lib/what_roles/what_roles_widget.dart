import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'what_roles_model.dart';
export 'what_roles_model.dart';

class WhatRolesWidget extends StatefulWidget {
  const WhatRolesWidget({Key? key}) : super(key: key);

  @override
  _WhatRolesWidgetState createState() => _WhatRolesWidgetState();
}

class _WhatRolesWidgetState extends State<WhatRolesWidget> {
  late WhatRolesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhatRolesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryText,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primaryText,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlipCard(
                    fill: Fill.fillBack,
                    direction: FlipDirection.HORIZONTAL,
                    speed: 400,
                    front: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Align(
                            alignment: AlignmentDirectional(-1, 0),
                            child: Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                              child: Container(
                                width: 160,
                                height: 235,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.asset(
                                      'assets/images/Mafiozi.jpg',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                            child: Container(
                              width: 160,
                              height: 235,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).tertiary,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.asset(
                                    'assets/images/Maniac.jpg',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    back: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).tertiary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: Text(
                          'Back',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF690808),
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : Color(0xFF690808),
                                size: 20,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color:
                                    enabled ? Colors.white : Color(0xFF690808),
                                size: 20,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                              count: _model.countControllerValue1 ??= 0,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue1 = count),
                              stepSize: 1,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF690808),
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : Color(0xFF690808),
                                size: 20,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color:
                                    enabled ? Colors.white : Color(0xFF690808),
                                size: 20,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                              count: _model.countControllerValue2 ??= 0,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue2 = count),
                              stepSize: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Container(
                            width: 160,
                            height: 235,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Beauty.jpg',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 160,
                            height: 235,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Doctor.jpg',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF690808),
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : Color(0xFF690808),
                                size: 20,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color:
                                    enabled ? Colors.white : Color(0xFF690808),
                                size: 20,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                              count: _model.countControllerValue3 ??= 0,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue3 = count),
                              stepSize: 1,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF690808),
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : Color(0xFF690808),
                                size: 20,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color:
                                    enabled ? Colors.white : Color(0xFF690808),
                                size: 20,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                              count: _model.countControllerValue4 ??= 0,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue4 = count),
                              stepSize: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Container(
                            width: 154,
                            height: 235,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Friendly2.jpeg',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 154,
                            height: 235,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).tertiary,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(
                                  'assets/images/Friendly3.jpeg',
                                ).image,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF690808),
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : Color(0xFF690808),
                                size: 20,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color:
                                    enabled ? Colors.white : Color(0xFF690808),
                                size: 20,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                              count: _model.countControllerValue5 ??= 0,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue5 = count),
                              stepSize: 1,
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-1, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                          child: Container(
                            width: 160,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Color(0xFF690808),
                              borderRadius: BorderRadius.circular(8),
                              shape: BoxShape.rectangle,
                              border: Border.all(
                                color: FlutterFlowTheme.of(context).alternate,
                                width: 2,
                              ),
                            ),
                            child: FlutterFlowCountController(
                              decrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.minus,
                                color: enabled
                                    ? FlutterFlowTheme.of(context).secondaryText
                                    : Color(0xFF690808),
                                size: 20,
                              ),
                              incrementIconBuilder: (enabled) => FaIcon(
                                FontAwesomeIcons.plus,
                                color:
                                    enabled ? Colors.white : Color(0xFF690808),
                                size: 20,
                              ),
                              countBuilder: (count) => Text(
                                count.toString(),
                                style: FlutterFlowTheme.of(context).titleLarge,
                              ),
                              count: _model.countControllerValue6 ??= 0,
                              updateCount: (count) => setState(
                                  () => _model.countControllerValue6 = count),
                              stepSize: 1,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Align(
                          alignment: AlignmentDirectional(0, 0),
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('Role1');
                              },
                              child: Container(
                                width: 335,
                                height: 235,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: Image.asset(
                                      'assets/images/Mafia1920AVA.jpeg',
                                    ).image,
                                  ),
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
