import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget>
    with TickerProviderStateMixin {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 300.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 600.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 900.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation1': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1500.ms,
          duration: 900.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(-120.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation2': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1500.ms,
          duration: 900.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(-120.0, 0.0),
        ),
      ],
    ),
    'containerOnPageLoadAnimation3': AnimationInfo(
      reverse: true,
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1500.ms,
          duration: 900.ms,
          begin: Offset(0.0, 0.0),
          end: Offset(-120.0, 0.0),
        ),
      ],
    ),
    'rowOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1200.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1200.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1500.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1500.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
    'columnOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 1500.ms,
          duration: 600.ms,
          begin: 0.0,
          end: 1.0,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 1500.ms,
          duration: 600.ms,
          begin: Offset(0.0, 10.0),
          end: Offset(0.0, 0.0),
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    _model.textController ??= TextEditingController();
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF2F2F2),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Hi,',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Outfit',
                                      fontSize: 24.0,
                                    ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 0.0, 0.0),
                                child: Text(
                                  'Dominik',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Outfit',
                                        color: Color(0xFF39CBC3),
                                        fontSize: 24.0,
                                      ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Text(
                              'Where would you like to go ?',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF585858),
                                  ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        width: 60.0,
                        height: 60.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          shape: BoxShape.circle,
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              2.0, 2.0, 2.0, 2.0),
                          child: Container(
                            width: 120.0,
                            height: 120.0,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://images.r.pl/zdjecia/hotele/glob/652/wlochy-rzym-i-toskania_652_101892_216401_600x600.jpg',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation1']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        child: Container(
                          width: 100.0,
                          height: 55.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9F9F9),
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                2.0, 0.0, 2.0, 0.0),
                            child: TextFormField(
                              controller: _model.textController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Search for places',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Outfit',
                                      color: Color(0xFF828282),
                                      fontWeight: FontWeight.normal,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0x00000000),
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(12.0),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context).bodyMedium,
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                        child: Container(
                          width: 60.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF9F9F9),
                            borderRadius: BorderRadius.circular(12.0),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          alignment: AlignmentDirectional(0.0, 0.0),
                          child: FaIcon(
                            FontAwesomeIcons.slidersH,
                            color: Color(0xFF828282),
                            size: 16.0,
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation2']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 16.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Popular',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF333333),
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Color(0xFF39CBC3),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Best option',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Outfit',
                                  color: Color(0xFF828282),
                                ),
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 6.0, 0.0, 0.0),
                            child: Container(
                              width: 5.0,
                              height: 5.0,
                              decoration: BoxDecoration(
                                color: Color(0xFFE0E0E0),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 96.0, 0.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              'Recommended',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    color: Color(0xFF828282),
                                  ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  0.0, 6.0, 0.0, 0.0),
                              child: Container(
                                width: 5.0,
                                height: 5.0,
                                decoration: BoxDecoration(
                                  color: Color(0xFFE0E0E0),
                                  shape: BoxShape.circle,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation3']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('PlaceDetails');
                            },
                            child: Container(
                              width: 160.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    'https://media.istockphoto.com/id/938335974/pl/zdj%C4%99cie/widok-z-lotu-ptaka-na-obszar-kualoa-na-hawajach-oahu.jpg?s=612x612&w=0&k=20&c=ADRFR5qOGxzEqm4kuWcI7fj-2oW51Qd16wOJaaAVCH0=',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Hawai',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.star_outline_rounded,
                                          color: Color(0xFF39CBC3),
                                          size: 16.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            '5.0',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation1']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('PlaceDetails');
                            },
                            child: Container(
                              width: 160.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    'https://podroztrwa.pl/wp-content/uploads/2022/01/gobi-g46f835372_1920-min.jpg',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Gobi desert',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.star_outline_rounded,
                                          color: Color(0xFF39CBC3),
                                          size: 16.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            '5.0',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation2']!),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 16.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.pushNamed('PlaceDetails');
                            },
                            child: Container(
                              width: 160.0,
                              height: 300.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: Image.network(
                                    'data:image/jpeg;base64,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',
                                  ).image,
                                ),
                                borderRadius: BorderRadius.circular(16.0),
                                border: Border.all(
                                  color: Colors.white,
                                ),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    12.0, 0.0, 12.0, 24.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Paris',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.star_outline_rounded,
                                          color: Color(0xFF39CBC3),
                                          size: 16.0,
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 0.0),
                                          child: Text(
                                            '5.0',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Outfit',
                                                  color: Colors.white,
                                                  fontSize: 12.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ).animateOnPageLoad(
                              animationsMap['containerOnPageLoadAnimation3']!),
                        ),
                      ],
                    ),
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation4']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 24.0, 20.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Top Places',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                      Text(
                        'see all',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Outfit',
                              color: Color(0xFF828282),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation5']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('PlaceDetails');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 120.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        'https://s27363.pcdn.co/wp-content/uploads/2020/05/Best-Things-to-do-in-London-1200x900.jpg.optimal.jpg',
                                      ).image,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'London',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star_outline_rounded,
                                              color: Color(0xFF39CBC3),
                                              size: 16.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                '5.0',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF333333),
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis sapien sed orci blandit, sit amet dapibus dolor convallis. Maecenas condimentum arcu vel lectus luctus, a consectetur libero lobortis. Donec vitae ligula magna. Nam viverra nisl vel turpis consequat, id congue nisi faucibus. Vivamus sed nibh scelerisque, tincidunt velit vel, feugiat nunc.',
                                          maxLines: 3,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF333333),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Color(0xFF828282),
                                              size: 16.0,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'London, Great Britain',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF585858),
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '\$80/person',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF585858),
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation1']!),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(20.0, 12.0, 20.0, 0.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          context.pushNamed('PlaceDetails');
                        },
                        child: Container(
                          width: double.infinity,
                          height: 120.0,
                          decoration: BoxDecoration(
                            color: Color(0xFFF2F2F2),
                            borderRadius: BorderRadius.circular(16.0),
                            border: Border.all(
                              color: Colors.white,
                            ),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 0.0, 12.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 80.0,
                                  height: 100.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: Image.network(
                                        'data:image/jpeg;base64,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',
                                      ).image,
                                    ),
                                    borderRadius: BorderRadius.circular(12.0),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 12.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: Text(
                                                'Amsterdam',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star_outline_rounded,
                                              color: Color(0xFF39CBC3),
                                              size: 16.0,
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(2.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                '5.0',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Outfit',
                                                          color:
                                                              Color(0xFF333333),
                                                          fontSize: 12.0,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed lobortis sapien sed orci blandit, sit amet dapibus dolor convallis. Maecenas condimentum arcu vel lectus luctus, a consectetur libero lobortis. Donec vitae ligula magna. Nam viverra nisl vel turpis consequat, id congue nisi faucibus. Vivamus sed nibh scelerisque, tincidunt velit vel, feugiat nunc.',
                                          maxLines: 3,
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Outfit',
                                                color: Color(0xFF333333),
                                                fontSize: 12.0,
                                                fontWeight: FontWeight.normal,
                                              ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Icon(
                                              Icons.location_on_outlined,
                                              color: Color(0xFF828282),
                                              size: 16.0,
                                            ),
                                            Expanded(
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        4.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  'Nederland, Amsterdam',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF585858),
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Text(
                                              '\$80/person',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Outfit',
                                                        color:
                                                            Color(0xFF585858),
                                                        fontSize: 9.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['columnOnPageLoadAnimation2']!),
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
