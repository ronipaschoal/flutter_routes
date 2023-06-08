import 'package:flutter/material.dart';

class FlutterBanner extends StatelessWidget {
  final Widget child;
  const FlutterBanner({
    super.key,
    required this.child,
  });

  Widget get _body {
    return Banner(
      message: 'Flutter',
      location: BannerLocation.topEnd,
      color: Colors.blue,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    return _body;
  }
}
