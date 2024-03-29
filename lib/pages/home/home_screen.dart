import 'package:flutter/material.dart';
import 'package:roni_site_2_0/config/navigate.dart';
import 'package:roni_site_2_0/config/routes.dart';
import 'package:roni_site_2_0/ui/logo.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget _body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const RpLogo(),
        const SizedBox(height: 16.0),
        const SelectableText(
          'Roni Paschoal',
          semanticsLabel: 'Roni Paschoal',
          style: TextStyle(
            fontFamily: 'Inkburrow',
            color: Colors.white,
            fontSize: 42.0,
          ),
        ),
        const SelectableText(
          'Boas-vindas!',
          semanticsLabel: 'Boas-vindas!',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 16.0),
        const SelectableText(
          'Sou um Dev Especialista em Flutter e este é meu Portfólio.',
          semanticsLabel:
              'Sou um Dev Especialista em Flutter e este é meu Portfólio.',
          style: TextStyle(
            color: Colors.white,
            fontSize: 16.0,
          ),
          textAlign: TextAlign.justify,
        ),
        const SizedBox(height: 32.0),
        OutlinedButton(
          onPressed: () => RpNavigate.to(context, RpRoutes.about),
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: Colors.white,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(16.0)),
            ),
          ),
          child: const Text(
            '>',
            semanticsLabel: 'Link da página Sobre',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) => _body(context);
}
