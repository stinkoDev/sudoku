import 'package:flutter/material.dart';

class SafeScaffold extends StatelessWidget {
  final Widget body;
  final PreferredSizeWidget? appBar;

  const SafeScaffold({super.key, required this.body, this.appBar});

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Scaffold(
        backgroundColor: Theme.of(context).colorScheme.surface,
        extendBody: true,
        appBar: appBar,
        body: SafeArea(
          child: Padding(padding: const EdgeInsets.all(8.0), child: body),
        ),
      ),
    );
  }
}
