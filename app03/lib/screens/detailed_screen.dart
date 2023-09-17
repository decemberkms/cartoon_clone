import 'package:flutter/material.dart';

class DetailedScreen extends StatelessWidget {
  final String title, thumb, id;

  const DetailedScreen(
      {super.key, required this.title, required this.thumb, required this.id});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text("hahaha"),
    );
  }
}
