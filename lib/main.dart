import 'package:camect/signin.dart';
import 'package:flutter/material.dart';
import 'package:camect/signin.dart';
import 'package:camect/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          primaryColor: CamectColor.primary,
          progressIndicatorTheme:
              ProgressIndicatorThemeData(color: CamectColor.primary),
          colorScheme: ColorScheme.light(
              primary: CamectColor.tertiary, secondary: CamectColor.primary),
          primarySwatch: CamectColor.tertiary,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textSelectionTheme:
              TextSelectionThemeData(selectionHandleColor: Colors.transparent)),
      debugShowCheckedModeBanner: false,
      builder: (context, child) {
        // Obtain the current media query information.
        final mediaQueryData = MediaQuery.of(context);

        final constrainedTextScaleFactor =
            mediaQueryData.textScaleFactor.clamp(0.8, 1.0).toDouble();

        return MediaQuery(
          data: mediaQueryData.copyWith(
            textScaleFactor: constrainedTextScaleFactor,
          ),
          child: child!,
        );
      },
      home: const SignIn(),
    );
  }
}
