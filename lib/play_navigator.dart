import 'package:flutter/material.dart';

import 'player_input_view.dart';
import 'game_view.dart';

class PlayNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navKey;
  const PlayNavigator({required this.navKey, super.key});

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navKey,
      onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => PlayerInputView(
              routeGameView: (namePlayer) => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          GameView(namePlayer: namePlayer))))),
    );
  }
}
