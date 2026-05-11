import 'package:ai_chatbot/core/AppColors.dart';
import 'package:ai_chatbot/core/Responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../view_models/Splash_View_Model.dart';

class SplashScreen extends ConsumerWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Future.microtask(() => ref.read(splashProvider).init(context));
    return Scaffold(
      body: Center(
        child: Text(
          "AI ChatBot",
          style: TextStyle(
            fontSize: ResponsiveLayout.isDesktop(context) ? 60 : 40,
            fontWeight: FontWeight.bold,
            color: AppColors.textPrimary,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50,
        color: AppColors.background,
        child: Center(
          child: Text(
            "Powered by Aftab",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: AppColors.textSecondary,
              fontSize: ResponsiveLayout.isDesktop(context) ? 20 : 16,
            ),
          ),
        ),
      ),
    );
  }
}
