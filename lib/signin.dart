import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:camect/app_localizations_en.dart';
import 'package:camect/custom_buttons.dart';
import 'package:camect/themes.dart';
import 'package:flutter_svg/svg.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final _bgEllipse = 'assets/uicomponents/bg_ellipse.png';
  final _iconSigninGoogle = Icons.circle;
  final _bgCamect = 'assets/images/bg_camect.png';
  final _bgLanCamect='assets/images/land.png';
  final _iconSigninFb = Icons.circle;
  final _iconCamectSvg = 'assets/icons/logo_camect.svg';
  final _iconApple = Icons.circle;
  final _iconAmazon = Icons.circle;
  final _iconEmailId = Icons.circle;
  final amazon = 'amzn';
  final apple = 'apple';
  final facebook = 'fb';
  final google = 'goog';
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  Size? _screenSize;
  Orientation? _orientation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildUI(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }

  Orientation getOrientation(BuildContext context) {
    return MediaQuery.of(context).orientation;
  }

  Size getScreenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  Widget _buildBackground() {
    return Stack(children: [
      Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.topRight,
        colors: [CamectColor.zircon, CamectColor.tertiary],
        tileMode: TileMode.repeated,
      ))),
      Container(
        margin: EdgeInsets.only(
            left: MediaQuery.of(context).size.width > 900?1080:80,
            top: MediaQuery.of(context).size.width > 900?130:40),
        child: Image.asset(
          _bgEllipse,
          width: (_screenSize?.width ?? 0) / 2.5
        ),
      ),
      Positioned(
        bottom:MediaQuery.of(context).size.width > 900?-140: -20,
        left: MediaQuery.of(context).size.width > 900?-230:-110,
        child: Image.asset(
          _bgEllipse,
          width: (_screenSize?.width ?? 0) / 2.5,
        ),
      ),
      Container(
          margin: EdgeInsets.only(left: 20, top: 45),
          child: SvgPicture.asset(
            _iconCamectSvg,
            height: 40,
          ))
    ]);
  }

  Widget _landbuildBgButton() {
    return Container(
        // width: MediaQuery.of(context).size.width<1000?(_screenSize?.width ?? 0):MediaQuery.of(context).size.width/2,
        // height: MediaQuery.of(context).size.width<1000?((_screenSize?.height ?? 0) ?? 0) / 3.2:MediaQuery.of(context).size.height,
        child: Stack(children: [
      Positioned(
        top: 100,
        right: 50,
        child: Container(
          width: 500,
          height: 500,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
            // borderRadius: BorderRadius.circular(50),
            image: DecorationImage(image: AssetImage(_bgLanCamect)),
            shape: BoxShape.circle,
          ),

          // child: Image.asset(_bgCamect,
          //     // height: (((_screenSize?.height ?? 0) ?? 0) / 1.2) - 20
          // ),
        ),
      ),
      Positioned(
        bottom: 165,
        right: 440,
        child: Container(
            width: 45.0,
            height: 45.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [CamectColor.darkTextTertiary, CamectColor.greenHaze],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
              ),
              boxShadow: [
                BoxShadow(
                  color: CamectColor.black.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 12.22,
                  offset: Offset(1.75, 13.09), // changes position of shadow
                )
              ],
              shape: BoxShape.circle,
            )),
      )
    ]));
  }

  Widget _buildBgButton() {
    return Container(
        width: (_screenSize?.width ?? 0),
        height: ((_screenSize?.height ?? 0) ?? 0) / 3.2,
        child: Stack(children: [
      Positioned(
        top: 0,
        right: 0,
        child: Image.asset(_bgCamect,
            height: (((_screenSize?.height ?? 0) ?? 0) / 3.2) - 20),
      ),
      Positioned(
        bottom: 5,
        right: 40,
        child: Container(
            width: 45.0,
            height: 45.0,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [CamectColor.darkTextTertiary, CamectColor.greenHaze],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                tileMode: TileMode.clamp,
              ),
              boxShadow: [
                BoxShadow(
                  color: CamectColor.black.withOpacity(0.15),
                  spreadRadius: 0,
                  blurRadius: 12.22,
                  offset: Offset(1.75, 13.09), // changes position of shadow
                )
              ],
              shape: BoxShape.circle,
            )),
      )
    ]));
  }

  Widget _buildBottomSection() {
    return Flexible(
      child: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              _buildLoginButton(AppLocalizationsEn.signinWithGoogle,
                  _iconSigninGoogle, () {}, CamectColor.cinnabar, 16),
              SizedBox(
                height: (_screenSize?.height ?? 0) * .015,
              ),
              _buildLoginButton(AppLocalizationsEn.signinWithFacebook,
                  _iconSigninFb, () {}, CamectColor.indigo, 16),
              SizedBox(
                height: (_screenSize?.height ?? 0) * .015,
              ),
              _buildLoginButton(AppLocalizationsEn.signinWithAmazon,
                  _iconAmazon, () {}, CamectColor.amazon, 16),
              SizedBox(
                height: (_screenSize?.height ?? 0) * .015,
              ),
              _buildLoginButton(AppLocalizationsEn.signinWithApple, _iconApple,
                  () {}, CamectColor.black, 16),
              SizedBox(
                height: (_screenSize?.height ?? 0) * .015,
              ),
              _buildLoginButton(AppLocalizationsEn.signinWithEmail,
                  _iconEmailId, () {}, CamectColor.greenHaze, 16),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLearnMoreButton() {
    return Column(
      children: [
        SizedBox(
          height:MediaQuery.of(context).size.width > 900?(_screenSize?.height ?? 0) * .03:  (_screenSize?.height ?? 0) * .01,
        ),
        RichText(
          text: TextSpan(
            // Note: Styles for TextSpans must be explicitly defined.
            // Child text spans will inherit styles from parent
            style: TextStyle(
                fontSize: 15.0,
                color: Colors.black,
                fontWeight: FontWeight.w400),
            children: <TextSpan>[
              TextSpan(text: AppLocalizationsEn.signinLearnMoreMessageFirst),
              TextSpan(
                  text: AppLocalizationsEn.signinLearnMoreMessageLast,
                  style: TextStyle(
                      fontSize: 15, color: CamectColor.darkTextTertiary),
                  recognizer: TapGestureRecognizer()..onTap = () {}),
            ],
          ),
        ),
        SizedBox(height:(_screenSize?.height ?? 0) * .02)
      ],
    );
  }

  Widget _buildLoginButton(String text, IconData iconData, Function action,
      Color color, double fontSize) {
    return SizedBox(
        width:MediaQuery.of(context).size.width > 900?(_screenSize?.width ?? 0) * .3: (_screenSize?.width ?? 0) * .8,
        height: 40,
        child: CustomButtons.customElevatedButton(
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            onPressed: () {
              action();
            },
            color: Colors.white,
            child: Row(children: [
              Container(
                margin: EdgeInsets.fromLTRB((_screenSize?.width ?? 0) * .04, 0,
                    (_screenSize?.width ?? 0) * .0305, 0),
                child: Icon(iconData, color: color, size: 20),
              ),
              Expanded(
                  child: Text(
                text,
                style: TextStyle(
                    color: color,
                    fontWeight: FontWeight.w500,
                    fontSize: fontSize),
                textAlign: TextAlign.center,
              )),
            ]),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
                side: BorderSide(color: color))));
  }

  Widget _buildTextContent() {
    return Center(
        child: Container(
            width: (_screenSize?.width ?? 0) * .85,
            child: Column(
              children: [
                SizedBox(
                    height: _orientation == Orientation.portrait
                        ? (_screenSize?.height ?? 0) * .01
                        : 0),
                Text(
                  AppLocalizationsEn.welcomeToCamect,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 26),
                ),
                SizedBox(
                  height: (_screenSize?.height ?? 0) * .02,
                ),
                Text(
                  AppLocalizationsEn.signinMessage,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height:MediaQuery.of(context).size.width > 900?(_screenSize?.height ?? 0) * .04: (_screenSize?.height ?? 0) * .02,
                )
              ],
            )));
  }

  Widget _buildUI() {
    _screenSize = getScreenSize(context);
    _orientation = getOrientation(context);
    if (MediaQuery.of(context).size.width < 900) {
      return Center(
          child: Stack(children: [
        _buildBackground(),
        Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildBgButton(),
          _buildTextContent(),
          _buildBottomSection(),
          _buildLearnMoreButton(),
        ]),
      ]));
    } else {
      return Stack(children: <Widget>[
        _buildBackground(),
        Row(children: <Widget>[
          Expanded(
            child: Container(
                child: Column(children: <Widget>[
              SizedBox(height: 200),
              _buildTextContent(),
              _buildBottomSection(),
              _buildLearnMoreButton(),
            ])),
          ),
          Expanded(child: _landbuildBgButton()),
        ]),
      ]);
    }
  }
}
