import 'package:flutter/material.dart';

class GameView extends StatelessWidget {
  final String namePlayer;
  const GameView({super.key, required this.namePlayer});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GameView'),
      ),
      body: Center(
        child: Text('GameView Player Name: $namePlayer'),
      ),
    );
  }
}
