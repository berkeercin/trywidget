import 'package:flutter/material.dart';
import 'package:trywidget/screens/home_screen.dart';
import 'package:trywidget/screens/try_drawer.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(useMaterial3: true, brightness: Brightness.dark),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/tryDrawer': (context) => const TryDrawer()
      }));
}
