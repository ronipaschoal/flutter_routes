import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget get _body {
    return const Center(child: Text('Roni Paschoal'));
  }

  @override
  Widget build(BuildContext context) {
    return _body;
  }
}
