import 'package:flutter/material.dart';

import 'presentation/pages/splash_screen/splash_screen_scaffold.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: SplashScreenPage(),
      ),
    ),
  );
}
