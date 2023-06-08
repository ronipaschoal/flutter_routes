import 'package:flutter/material.dart';
import 'package:roni_site_2_0/config/navigate.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  Widget _body(BuildContext context) {
    return Container(
      color: Colors.black12,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('About Roni Paschoal'),
          const SizedBox(height: 16.0),
          InkWell(
            child: const Text('Close'),
            onTap: () => RpNavigate.close(context),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) => _body(context);
}
