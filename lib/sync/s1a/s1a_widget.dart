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
import 's1a_model.dart';
export 's1a_model.dart';

class S1aWidget extends StatefulWidget {
  const S1aWidget({super.key});

  @override
  State<S1aWidget> createState() => _S1aWidgetState();
}

class _S1aWidgetState extends State<S1aWidget> with TickerProviderStateMixin {
  late S1aModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S1aModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.aa = 0;
      _model.totalaa = 0;
      setState(() {});
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller
          ..reset()
          ..repeat();
      }
      _model.as = await AGroup.aCall.call();

      _model.totalaa = ((_model.as?.jsonBody ?? '')
              .toList()
              .map<AaStruct?>(AaStruct.maybeFromMap)
              .toList() as Iterable<AaStruct?>)
          .withoutNulls
          .length;
      setState(() {});
      while (_model.aa! <
          ((_model.as?.jsonBody ?? '')
                  .toList()
                  .map<AaStruct?>(AaStruct.maybeFromMap)
                  .toList() as Iterable<AaStruct?>)
              .withoutNulls
              .length) {
        await SQLiteManager.instance.adda(
          id: ((_model.as?.jsonBody ?? '')
                  .toList()
                  .map<AaStruct?>(AaStruct.maybeFromMap)
                  .toList() as Iterable<AaStruct?>)
              .withoutNulls[_model.aa!]
              .id,
          created: ((_model.as?.jsonBody ?? '')
                  .toList()
                  .map<AaStruct?>(AaStruct.maybeFromMap)
                  .toList() as Iterable<AaStruct?>)
              .withoutNulls[_model.aa!]
              .created,
          name: ((_model.as?.jsonBody ?? '')
                  .toList()
                  .map<AaStruct?>(AaStruct.maybeFromMap)
                  .toList() as Iterable<AaStruct?>)
              .withoutNulls[_model.aa!]
              .name,
          email: ((_model.as?.jsonBody ?? '')
                  .toList()
                  .map<AaStruct?>(AaStruct.maybeFromMap)
                  .toList() as Iterable<AaStruct?>)
              .withoutNulls[_model.aa!]
              .email,
          phone: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .phone,
          username: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .username,
          image: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .image,
          status: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .status,
          aa: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .aa,
          xt: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .xt,
          ig: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .ig,
          fb: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .fb,
          pi: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .pi,
          th: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .th,
          li: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .li,
          wa: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .wa,
          sc: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .sc,
          rt: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .rt,
          tg: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .tg,
          sf: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .sf,
          dd: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .dd,
          rd: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .rd,
          ch: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .ch,
          uuid: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .uuid,
          desc: (((_model.as?.jsonBody ?? '')
                      .toList()
                      .map<AaStruct?>(AaStruct.maybeFromMap)
                      .toList() as Iterable<AaStruct?>)
                  .withoutNulls[_model.aa!])
              .desc,
        );
        _model.aa = _model.aa! + 1;
        setState(() {});
      }
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller.reset();
      }

      context.goNamed('s2tar');
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
                  'a',
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
