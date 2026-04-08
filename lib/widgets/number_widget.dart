import 'package:flutter/material.dart';

class NumberWidget extends StatefulWidget {
  // This is the input number, this widget takes an int and just returns the widget with a onclick button
  final int number;

  const NumberWidget({super.key, required this.number});
  @override
  State<NumberWidget> createState() => _NumberWidgetState();
}

class _NumberWidgetState extends State<NumberWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: RawMaterialButton(
        onPressed: () {},
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.all(Radius.circular(15)),
        ),
        child: Text('${widget.number}'),
      ),
    );
  }
}
