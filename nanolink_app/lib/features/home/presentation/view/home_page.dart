import 'package:flutter/material.dart';
import 'package:nanolink_app/resources/colors/app_colors.dart';
import 'package:nanolink_app/widgets/app_text.dart';
import 'package:nanolink_app/widgets/primary_textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                AppText.headline4(
                  'Create Short Links!',
                  textAlign: TextAlign.center,
                  color: context.colors.labelSecondary,
                ),
                const SizedBox(height: 16),
                Container(
                  color: context.colors.cardColor,
                  constraints: const BoxConstraints(maxWidth: 900),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.fromLTRB(32, 32, 32, 40),
                        child: PrimaryTextField(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
