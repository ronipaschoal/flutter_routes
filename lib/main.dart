import 'package:flutter/material.dart';
import 'package:roni_site_2_0/home/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget get _pageContent {
    return const HomeScreen();
  }

  Widget get _flutterBanner {
    return Banner(
      message: "Flutter",
      location: BannerLocation.topEnd,
      color: Colors.blue,
      child: _pageContent,
    );
  }

  Widget get _body {
    return MaterialApp(
      title: 'Site Roni Paschoal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: _flutterBanner,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _body;
  }
}
