import 'package:flutter/material.dart';

import 'SplashScreen/splash_screen_scaffold.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: SplashScreenScaffold(),
      ),
    ),
  );
}
