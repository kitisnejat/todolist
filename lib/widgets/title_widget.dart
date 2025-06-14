import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: const Text("To Do App", style: TextStyle(fontSize: 50, color: Colors.orangeAccent)));
  }
}