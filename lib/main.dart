import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sudoku/provider.dart';
import 'package:sudoku/app.dart';
import 'package:sudoku/theme.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavProvider(),
      child: MaterialApp.router(
        title: 'Sudoku',
        theme: AppTheme.customLight,
        darkTheme: AppTheme.customDark,
        themeMode: ThemeMode.system,
        routerConfig: App.router,
      ),
    );
  }
}
