import 'package:ai_chatbot/views/HomeScreen.dart';
import 'package:ai_chatbot/views/SplashScreen.dart';
import 'package:flutter/cupertino.dart';

class AppRoutes {
  static const String splashScreen = "/";
  static const String homeScreen = "/home";

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      splashScreen: (context) => SplashScreen(),
      homeScreen: (context) => HomeScreen(),
    };
  }
}