import 'package:flutter/material.dart';
import 'package:roni_site_2_0/config/navigate.dart';
import 'package:roni_site_2_0/config/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _body(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Roni Paschoal'),
        const SizedBox(height: 16.0),
        InkWell(
          child: const Text('Go to About'),
          onTap: () => RpNavigate.to(context, RpRoutes.about),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) => _body(context);
}
