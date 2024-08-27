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
import 's4items_model.dart';
export 's4items_model.dart';

class S4itemsWidget extends StatefulWidget {
  const S4itemsWidget({super.key});

  @override
  State<S4itemsWidget> createState() => _S4itemsWidgetState();
}

class _S4itemsWidgetState extends State<S4itemsWidget>
    with TickerProviderStateMixin {
  late S4itemsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => S4itemsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.items = 0;
      _model.totalitems = 0;
      setState(() {});
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller
          ..reset()
          ..repeat();
      }
      _model.sitems = await ItemsGroup.getCall.call();

      _model.totalitems = ((_model.sitems?.jsonBody ?? '')
              .toList()
              .map<ItemStruct?>(ItemStruct.maybeFromMap)
              .toList() as Iterable<ItemStruct?>)
          .withoutNulls
          .length;
      setState(() {});
      while (_model.items! <
          ((_model.sitems?.jsonBody ?? '')
                  .toList()
                  .map<ItemStruct?>(ItemStruct.maybeFromMap)
                  .toList() as Iterable<ItemStruct?>)
              .withoutNulls
              .length) {
        await SQLiteManager.instance.addItems(
          id: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .id,
          created: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .created,
          tarid: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .tarid,
          name: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .name,
          category: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .category,
          type: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .type,
          sku: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .sku,
          unit: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .unit,
          stock: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .stock,
          location: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .location,
          cprice: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .cprice,
          sprice: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .sprice,
          menu: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .menu,
          sync: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .sync,
          primaryimg: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .primaryimg,
          desc: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .desc,
          group: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .group,
          reorder: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .reorder,
          dimen: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .dimen,
          weight: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .weight,
          color: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .color,
          material: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .material,
          manufacturer: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .manufacturer,
          brand: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .brand,
          upc: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .upc,
          isbn: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .isbn,
          mpn: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .mpn,
          ean: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .ean,
          imglist: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .imglist,
          vendor: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .vendor,
          shelflife: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .shelflife
              .toString(),
          groupid: (((_model.sitems?.jsonBody ?? '')
                      .toList()
                      .map<ItemStruct?>(ItemStruct.maybeFromMap)
                      .toList() as Iterable<ItemStruct?>)
                  .withoutNulls[_model.items!])
              .groupid,
        );
        _model.items = _model.items! + 1;
        setState(() {});
      }
      if (animationsMap['imageOnActionTriggerAnimation'] != null) {
        animationsMap['imageOnActionTriggerAnimation']!.controller.reset();
      }

      context.pushNamed('s5par');
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
                  'Items',
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
