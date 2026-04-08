import 'package:flutter/material.dart';

class LivesWidget extends StatefulWidget {
  final int livesAmmount;
  const LivesWidget({super.key, required this.livesAmmount});

  @override
  State<LivesWidget> createState() => _LivesWidgetState();
}

class _LivesWidgetState extends State<LivesWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .center,
      children: [
        Icon(Icons.circle, color: Theme.of(context).colorScheme.primary),
        Icon(Icons.circle, color: Theme.of(context).colorScheme.primary),
        Icon(Icons.circle, color: Theme.of(context).disabledColor),
      ],
    );
  }
}
