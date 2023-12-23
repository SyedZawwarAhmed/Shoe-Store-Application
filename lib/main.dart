import 'package:flutter/material.dart';
import 'presentation/routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: '/',
      theme: ThemeData(
        useMaterial3: true,

        // Define the default brightness and colors.
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.black,
          // ···
          brightness: Brightness.light,
        ),

        // Define the default `TextTheme`. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.
        textTheme: const TextTheme(
          displayLarge: TextStyle(
            fontSize: 72,
            fontWeight: FontWeight.bold,
          ),
          // ···
          // titleLarge: GoogleFonts.oswald(
          //   fontSize: 30,
          //   fontStyle: FontStyle.italic,
          // ),
          // bodyMedium: GoogleFonts.merriweather(),
          // displaySmall: GoogleFonts.pacifico(),
        ),
      ),
    );
  }
}
