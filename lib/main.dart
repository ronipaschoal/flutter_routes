import 'package:flutter/material.dart';
import 'package:roni_site_2_0/pages/home/home_screen.dart';
import 'package:roni_site_2_0/ui/flutter_banner.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget get _body {
    return MaterialApp(
      title: 'Site Roni Paschoal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: FlutterBanner(child: HomeScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _body;
  }
}
