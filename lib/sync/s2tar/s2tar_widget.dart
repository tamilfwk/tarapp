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
import 's2tar_model.dart';
export 's2tar_model.dart';

class S2tarWidget extends StatefulWidget {
  const S2tarWidget({super.key});

  @override
  State<S2tarWidget> createState() => _S2tarWidgetState();
}

class _S2tarWidgetState extends State<S2tarWidget>
    with TickerProviderStateMixin {
  late S2tarModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S2tarModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.tar = 0;
      _model.totaltar = 0;
      setState(() {});
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller
          ..reset()
          ..repeat();
      }
      _model.tars = await TarGroup.tarCall.call();

      _model.totaltar = ((_model.tars?.jsonBody ?? '')
              .toList()
              .map<TarStruct?>(TarStruct.maybeFromMap)
              .toList() as Iterable<TarStruct?>)
          .withoutNulls
          .length;
      setState(() {});
      while (_model.tar! <
          ((_model.tars?.jsonBody ?? '')
                  .toList()
                  .map<TarStruct?>(TarStruct.maybeFromMap)
                  .toList() as Iterable<TarStruct?>)
              .withoutNulls
              .length) {
        await SQLiteManager.instance.addtar(
          tarid: ((_model.tars?.jsonBody ?? '')
                  .toList()
                  .map<TarStruct?>(TarStruct.maybeFromMap)
                  .toList() as Iterable<TarStruct?>)
              .withoutNulls[_model.tar!]
              .tarid,
          created: ((_model.tars?.jsonBody ?? '')
                  .toList()
                  .map<TarStruct?>(TarStruct.maybeFromMap)
                  .toList() as Iterable<TarStruct?>)
              .withoutNulls[_model.tar!]
              .created,
          uuid: ((_model.tars?.jsonBody ?? '')
                  .toList()
                  .map<TarStruct?>(TarStruct.maybeFromMap)
                  .toList() as Iterable<TarStruct?>)
              .withoutNulls[_model.tar!]
              .uuid,
          type: ((_model.tars?.jsonBody ?? '')
                  .toList()
                  .map<TarStruct?>(TarStruct.maybeFromMap)
                  .toList() as Iterable<TarStruct?>)
              .withoutNulls[_model.tar!]
              .type,
          plan: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .plan,
          size: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .size,
          title: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .title,
          thumbnail: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .thumbnail,
          link: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .link,
          desc: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .desc,
          notes: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .notes,
          secrets: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .secrets,
          notionid: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .notionid,
          views: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .views,
          analytics: (((_model.tars?.jsonBody ?? '')
                      .toList()
                      .map<TarStruct?>(TarStruct.maybeFromMap)
                      .toList() as Iterable<TarStruct?>)
                  .withoutNulls[_model.tar!])
              .analytics,
        );
        _model.tar = _model.tar! + 1;
        setState(() {});
      }
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller.reset();
      }

      context.goNamed('s3ig');
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
                  'tars',
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
