import 'package:ai_chatbot/core/AppRoutes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final splashProvider = Provider((ref) => SplashViewModel());

class SplashViewModel {
  void init(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 10));

    Navigator.pushReplacementNamed(context, AppRoutes.homeScreen);
  }
}