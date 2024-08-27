import '/backend/api_requests/api_calls.dart';
import '/backend/sqlite/sqlite_manager.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/backend/schema/structs/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 's3ig_model.dart';
export 's3ig_model.dart';

class S3igWidget extends StatefulWidget {
  const S3igWidget({super.key});

  @override
  State<S3igWidget> createState() => _S3igWidgetState();
}

class _S3igWidgetState extends State<S3igWidget> with TickerProviderStateMixin {
  late S3igModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S3igModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.ig = 0;
      _model.totalig = 0;
      setState(() {});
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller
          ..reset()
          ..repeat();
      }
      _model.igs = await IgGroup.igCall.call();

      _model.totalig = ((_model.igs?.jsonBody ?? '')
              .toList()
              .map<IgStruct?>(IgStruct.maybeFromMap)
              .toList() as Iterable<IgStruct?>)
          .withoutNulls
          .length;
      setState(() {});
      while (_model.ig! <
          ((_model.igs?.jsonBody ?? '')
                  .toList()
                  .map<IgStruct?>(IgStruct.maybeFromMap)
                  .toList() as Iterable<IgStruct?>)
              .withoutNulls
              .length) {
        await SQLiteManager.instance.addig(
          id: ((_model.igs?.jsonBody ?? '')
                  .toList()
                  .map<IgStruct?>(IgStruct.maybeFromMap)
                  .toList() as Iterable<IgStruct?>)
              .withoutNulls[_model.ig!]
              .id,
          created: ((_model.igs?.jsonBody ?? '')
                  .toList()
                  .map<IgStruct?>(IgStruct.maybeFromMap)
                  .toList() as Iterable<IgStruct?>)
              .withoutNulls[_model.ig!]
              .created,
          name: ((_model.igs?.jsonBody ?? '')
                  .toList()
                  .map<IgStruct?>(IgStruct.maybeFromMap)
                  .toList() as Iterable<IgStruct?>)
              .withoutNulls[_model.ig!]
              .name,
          description: ((_model.igs?.jsonBody ?? '')
                  .toList()
                  .map<IgStruct?>(IgStruct.maybeFromMap)
                  .toList() as Iterable<IgStruct?>)
              .withoutNulls[_model.ig!]
              .description,
          parentid: (((_model.igs?.jsonBody ?? '')
                      .toList()
                      .map<IgStruct?>(IgStruct.maybeFromMap)
                      .toList() as Iterable<IgStruct?>)
                  .withoutNulls[_model.ig!])
              .parentid,
          tarid: (((_model.igs?.jsonBody ?? '')
                      .toList()
                      .map<IgStruct?>(IgStruct.maybeFromMap)
                      .toList() as Iterable<IgStruct?>)
                  .withoutNulls[_model.ig!])
              .tarid,
          status: (((_model.igs?.jsonBody ?? '')
                      .toList()
                      .map<IgStruct?>(IgStruct.maybeFromMap)
                      .toList() as Iterable<IgStruct?>)
                  .withoutNulls[_model.ig!])
              .status,
          tags: (((_model.igs?.jsonBody ?? '')
                      .toList()
                      .map<IgStruct?>(IgStruct.maybeFromMap)
                      .toList() as Iterable<IgStruct?>)
                  .withoutNulls[_model.ig!])
              .tags,
          sync: (((_model.igs?.jsonBody ?? '')
                      .toList()
                      .map<IgStruct?>(IgStruct.maybeFromMap)
                      .toList() as Iterable<IgStruct?>)
                  .withoutNulls[_model.ig!])
              .sync,
          analytics: (((_model.igs?.jsonBody ?? '')
                      .toList()
                      .map<IgStruct?>(IgStruct.maybeFromMap)
                      .toList() as Iterable<IgStruct?>)
                  .withoutNulls[_model.ig!])
              .analytics,
        );
        _model.ig = _model.ig! + 1;
        setState(() {});
      }
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller.reset();
      }

      context.pushNamed('s4items');
    });

    animationsMap.addAll({
      'imageOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: true,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'sync',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineMediumFamily,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineMediumFamily),
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/circle.png',
                  width: double.infinity,
                  height: 100.0,
                  fit: BoxFit.contain,
                ),
              ).animateOnActionTrigger(
                animationsMap['imageOnActionTriggerAnimation']!,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                child: Text(
                  'Item Groups',
                  style: FlutterFlowTheme.of(context).titleLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).titleLargeFamily,
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).titleLargeFamily),
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
