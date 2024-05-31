import 'package:flutter/material.dart';

TextEditingController inputControllerP1 = TextEditingController();

class PlayerInputView extends StatelessWidget {
  final Function routeGameView;
  const PlayerInputView({required this.routeGameView, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Game'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            const Text('Enter player name:', style: TextStyle(fontSize: 20)),
            TextField(
              controller: inputControllerP1,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter player name',
              ),
            ),
            ElevatedButton(
              onPressed: () {
                routeGameView(inputControllerP1.text);
              },
              child: const Text('Start Game'),
            ),
          ],
        ),
      ),
    );
  }
}
