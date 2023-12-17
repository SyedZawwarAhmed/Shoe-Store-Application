import 'package:flutter/material.dart';

import 'app_scaffold.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app', // used by the OS task switcher
      home: SafeArea(
        child: AppScaffold(),
      ),
    ),
  );
}
