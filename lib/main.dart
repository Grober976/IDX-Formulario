import 'package:flutter/material.dart';
// import 'package:myapp/ui/screens/home_screen.dart';
import 'package:myapp/ui/theme/app_theme.dart';
import 'package:myapp/ui/screens/formCompetencias.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme(selectedColor: 4).getTheme(),
        home: const FormularioCompetencias());
  }
}
