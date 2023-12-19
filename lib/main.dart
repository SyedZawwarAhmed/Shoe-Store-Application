import 'package:flutter/material.dart';
import 'presentation/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My App',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/',
    );
  }
}
