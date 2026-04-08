import 'package:flutter/material.dart';
import 'package:sudoku/widgets/grid_widget.dart';
import 'package:sudoku/widgets/lives_widget.dart';
import 'package:sudoku/widgets/safe_scaffold.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> difficulty = ['beginner', 'easy', 'medium', 'hard', 'extream'];
  double _difficultyValue = 2;
  bool gameState = false;
  int gameLives = 3;

  @override
  Widget build(BuildContext context) {
    return SafeScaffold(
      body: Center(
        child: Column(
          spacing: 10,
          mainAxisAlignment: .spaceBetween,
          crossAxisAlignment: .center,
          children: [
            // Timer
            Text('00:00'),
            // Ammount of lives remaining and the full grid for the game
            Column(
              children: [
                LivesWidget(livesAmmount: gameLives),
                GridWidget(),
              ],
            ),
            Column(
              children: [
                Text(difficulty[_difficultyValue.toInt()]),
                Slider(
                  value: _difficultyValue,
                  max: 4,
                  divisions: 4,
                  onChanged: (double input) {
                    setState(() {
                      _difficultyValue = input;
                    });
                  },
                ),
              ],
            ),
            FilledButton(
              onPressed: () {
                setState(() {
                  gameState = !gameState;
                });
              },
              child: Text(gameState ? 'cancel' : 'new game'),
            ),
          ],
        ),
      ),
    );
  }
}
