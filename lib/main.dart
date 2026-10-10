import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyectoide/presentation/home/screens/home_screen.dart';
import 'package:proyectoide/providers/color_provider.dart';
import 'package:proyectoide/config/theme/app_theme.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectColor = ref.watch(colorProvider);
    return MaterialApp(
      title: "Menus",
      theme: AppTheme(selectedColor: selectColor, isDark:false).get,
      home: HomeScreen()
      );}
}