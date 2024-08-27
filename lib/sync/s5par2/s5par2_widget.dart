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
import 's5par2_model.dart';
export 's5par2_model.dart';

class S5par2Widget extends StatefulWidget {
  const S5par2Widget({super.key});

  @override
  State<S5par2Widget> createState() => _S5par2WidgetState();
}

class _S5par2WidgetState extends State<S5par2Widget>
    with TickerProviderStateMixin {
  late S5par2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S5par2Model());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.par = 0;
      _model.totalpar = 0;
      setState(() {});
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller
          ..reset()
          ..repeat();
      }
      _model.pars = await ParGroup.gparCall.call();

      _model.totalpar = ((_model.pars?.jsonBody ?? '')
              .toList()
              .map<ParStruct?>(ParStruct.maybeFromMap)
              .toList() as Iterable<ParStruct?>)
          .withoutNulls
          .length;
      setState(() {});
      while (_model.par! <
          ((_model.pars?.jsonBody ?? '')
                  .toList()
                  .map<ParStruct?>(ParStruct.maybeFromMap)
                  .toList() as Iterable<ParStruct?>)
              .withoutNulls
              .length) {
        await SQLiteManager.instance.addpar(
          id: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .id,
          name: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .name,
          type: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .type,
          fsize: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .fsize,
          filedata: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .filedata,
          filepath: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .filepath,
          descr: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .descr,
          tarid: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .tarid,
          par: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .par,
          views: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .views
              .toString(),
          status: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .status,
          tags: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .tags,
          sync: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .sync,
          thumbnail: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .thumbnail,
          analytics: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .analytics,
          uploaded: (((_model.pars?.jsonBody ?? '')
                      .toList()
                      .map<ParStruct?>(ParStruct.maybeFromMap)
                      .toList() as Iterable<ParStruct?>)
                  .withoutNulls[_model.par!])
              .uploaded,
        );
        _model.par = _model.par! + 1;
        setState(() {});
      }
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller.reset();
      }

      context.pushNamed('files');
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
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            decoration: const BoxDecoration(),
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
                    'par',
                    style: FlutterFlowTheme.of(context).titleLarge.override(
                          fontFamily:
                              FlutterFlowTheme.of(context).titleLargeFamily,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                          useGoogleFonts: GoogleFonts.asMap().containsKey(
                              FlutterFlowTheme.of(context).titleLargeFamily),
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
