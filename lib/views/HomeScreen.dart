import 'package:flutter/material.dart';
import '../core/Responsive.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "AI Chat Bot",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: ResponsiveLayout.isDesktop(context) ? 24 : 18,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: ListView(children: [])),
          Row(children: [
            Expanded(child: Expanded(child: TextField())),
            Icon(Icons.send, color: Colors.blue)
          ])
        ],
      ),
    );
  }
}
