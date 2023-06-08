import 'package:flutter/material.dart';
import 'package:roni_site_2_0/ui/flutter_banner.dart';

class RpScaffold extends StatelessWidget {
  final Widget child;

  const RpScaffold({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      extendBodyBehindAppBar: true,
      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.sizeOf(context).width,
        child: RpFlutterBanner(child: child),
      ),
    );
  }
}
