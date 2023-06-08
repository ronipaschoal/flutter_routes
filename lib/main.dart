import 'package:flutter/material.dart';
import 'package:roni_site_2_0/config/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Site Roni Paschoal';
  static const Color _brandColor = Colors.yellow;

  Widget get _body {
    return MaterialApp.router(
      title: _title,
      debugShowCheckedModeBanner: false,
      routerConfig: RpRoutes.router,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: _brandColor),
        useMaterial3: true,
      ),
    );
  }

  @override
  Widget build(BuildContext context) => _body;
}
