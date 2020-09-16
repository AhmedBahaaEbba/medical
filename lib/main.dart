import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:medical/onBoarding.dart';

import 'login.dart';
import 'register.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Medic',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        locale: Locale("ar"),
        supportedLocales: [
          Locale("ar")
        ],
        localizationsDelegates: [
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          DefaultCupertinoLocalizations.delegate
        ],
        routes: {
          '/': (context) => OnBoarding(),
          Login.routeName: (context) => Login(),
          Register.routeName: (context) => Register(),
        });
  }
}
