import 'package:flutter/material.dart';
import 'package:sudoku/widgets/number_widget.dart';
import 'package:sudoku/utils/number_generator.dart';

class GridWidget extends StatefulWidget {
  const GridWidget({super.key});
  @override
  State<GridWidget> createState() => _GridWidgetState();
}

class _GridWidgetState extends State<GridWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GridView.count(
        crossAxisCount: 9,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        childAspectRatio: 1,
        // children: [
        //   for (int num = 1; num < 82; num++)
        //     NumberWidget(number: randomNumber(num)),
        // ],
        children: [
          for (int i = 0; i < numberArray().length; i++)
            NumberWidget(number: numberArray()[i]),
        ],
        // children: [
        //   for (int num = 0; num < 81; num++)
        //     Icon(
        //       Icons.circle,
        //       color: Theme.of(context).colorScheme.inversePrimary,
        //     ),
        // ],
      ),
    );
  }
}
