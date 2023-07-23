import 'package:flutter/material.dart';
import 'package:roni_site_2_0/ui/flutter_banner.dart';

class RpScaffold extends StatelessWidget {
  final Widget child;

  const RpScaffold({
    super.key,
    required this.child,
  });

  AppBar _appBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      iconTheme: const IconThemeData(color: Colors.white),
    );
  }

  Widget _body(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.4],
          colors: [
            Color(0xFF353535),
            Color(0xFF1e1e1e),
          ],
        ),
      ),
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: RpFlutterBanner(
        child: Center(
          child: Container(
            constraints: const BoxConstraints(
              minWidth: 390.0,
              maxWidth: 1280.0,
            ),
            padding: const EdgeInsets.all(64.0),
            child: child,
          ),
        ),
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return Container(
      color: const Color(0x22FFFFFF),
      padding: const EdgeInsets.all(8.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SelectableText(
            'roni@ronipaschoal.com.br',
            semanticsLabel: 'email roni@ronipaschoal.com.br',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
          SizedBox(width: 32.0),
          SelectableText(
            'Linkedin',
            style: TextStyle(
              color: Colors.white,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: _body(context),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }
}
