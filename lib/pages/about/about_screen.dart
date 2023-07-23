import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget _body(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Container(
                width: 160,
                height: 160,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/photos/me.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32.0),
            const SelectableText(
              'Atuo na área de desenvolvimento desde 2013 e dede o início sou entusiasta da tecnologia hibrida de desenvolvimento mobile.',
              semanticsLabel:
                  'Atuo na área de desenvolvimento desde 2013 e dede o início sou entusiasta da tecnologia hibrida de desenvolvimento mobile.',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const SelectableText(
              'Nesse período atuei em alguns projetos web móveis, com o uso do Angular 1.5 e compilados com Phonegap, os quais ajudei no desenvolvimento e distribuição nas plataformas Google Play e App Store.',
              semanticsLabel:
                  'Nesse período atuei em alguns projetos web móveis, com o uso do Angular 1.5 e compilados com Phonegap, os quais ajudei no desenvolvimento e distribuição nas plataformas Google Play e App Store.',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const SelectableText(
              'Ao longo do tempo foquei mais no desenvolvimento Front-end onde atuei por alguns anos.',
              semanticsLabel:
                  'Ao longo do tempo foquei mais no desenvolvimento Front-end onde atuei por alguns anos.',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const SelectableText(
              'No final de 2022 voltei a atuar no desenvolvimento de aplicativos Android e IOs, agora com o uso do Flutter e tenho me apaixonado cada vez mais por essa tecnologia.',
              semanticsLabel:
                  'No final de 2022 voltei a atuar no desenvolvimento de aplicativos Android e IOs, agora com o uso do Flutter e tenho me apaixonado cada vez mais por essa tecnologia.',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
            const SizedBox(height: 16.0),
            const SelectableText(
              'Hoje participo da primeira equipe de Flutter da linha THEx da TOTVs, onde ajudo a criar as primeiras bibliotecas e Aplicativos em com essa tecnologia da torre.',
              semanticsLabel:
                  'Hoje participo da primeira equipe de Flutter da linha THEx da TOTVs, onde ajudo a criar as primeiras bibliotecas e Aplicativos em com essa tecnologia da torre.',
              style: TextStyle(color: Colors.white, fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) => _body(context);
}
